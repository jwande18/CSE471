#!/usr/bin/env python
# encoding: utf-8

__copyright__ = "Copyright 2019, AAIR Lab, ASU"
__authors__ = ["Naman Shah"]
__credits__ = ["Siddharth Srivastava"]
__license__ = "MIT"
__version__ = "1.0"
__maintainers__ = ["Pulkit Verma", "Abhyudaya Srinet"]
__contact__ = "aair.lab@asu.edu"
__docformat__ = 'reStructuredText'

import problem 
import rospy
from std_msgs.msg import String
import argparse
from evaluate import compute_g
from evaluate import compute_h
from node import Node
import os
from priority_queue import PriorityQueue
from parser import parse_args
from server import initialize_search_server
from server import generate_maze
import subprocess
import time
from utils import initialize_ros
from utils import cleanup_ros

SUBMIT_FILENAME = "hw1_results.csv"
SUBMIT_SEARCH_TIME_LIMIT = 300

class SearchTimeOutError(Exception):

    pass

def is_invalid(state):
    """
        Parameters
        ===========
            state: State
                The state to be checked.
                
        Returns
        ========
            bool
                True if the state is invalid, False otherwise.
    """
    
    return state.x == -1 or state.y == -1

def build_solution(best_path, current_node):
    """
        Builds the solution from the best path recorded.
        
        Parameters
        ===========
            
            best_path: dict
                A map of state -> node representing the best path.
            current_node: Node
                The current node from which the path is to be recorded.
                
        Returns
        ========
            list
                A list of the actions that will lead from the initial state to
                the state represented by the current_node.
    """
    
    action_list = []
    
    # Iterate all the way until the parent.
    # The initial node's parent pointer will be None so we only check till we
    # reach the initial state.
    while current_node.get_parent() is not None:
    
        current_state = current_node.get_state()
        action_list.append(current_node.get_action())
        
        # Consult the map to get the next for the next state (in reverse order).
        current_node = best_path[current_state]
        
    # Since we went bottom-up, to ensure actions are executable, we need to 
    # reverse the action_list.
    #
    # Python's list.reverse() reverses in-place.
    action_list.reverse()
    
    return action_list

def search(algorithm, time_limit):
    """
        Performs a search using the specified algorithm.
        
        Parameters
        ===========
            algorithm: str
                The algorithm to be used for searching.
            time_limit: int
                The time limit in seconds to run this method for.
                
        Returns
        ========
            tuple(list, int)
                A tuple of the action_list and the total number of nodes
                expanded.
    """
    
    # The helper allows us to access the problem functions.
    helper = problem.Helper()
    
    # Get the initial and the goal states.
    init_state = helper.get_initial_state()
    goal_state = helper.get_goal_state()
    
    # Initialize the g_score map, we use this map to keep a track of the
    # shortest path to a state that we have observed.
    #
    # This map stores data of the form state -> int.
    g_score = {}
    g_score[init_state] = 0

    # Initialize a map to store the best path to a state.
    #
    # This map stores data of the form state -> Node.
    best_path = {}
    best_path[init_state] = None
    
    # Initialize the init node of the search tree and compute its f_score.
    init_node = Node(init_state, None, 0, None, 0)
    f_score = compute_g(algorithm, init_node, goal_state) \
        + compute_h(algorithm, init_node, goal_state)
    
    # Initialize the fringe as a priority queue.
    priority_queue = PriorityQueue()
    priority_queue.push(f_score, init_node)
    
    action_list = []
    total_nodes_expanded = 0
    time_limit = time.time() + time_limit
    while not priority_queue.is_empty() and time.time() < time_limit:
    
        # Pop the node with the smallest f_score from the fringe.
        current_node = priority_queue.pop()
        current_state = current_node.get_state()
        
        # If the current state is a goal state, we are done and need to
        # reconstruct the best path to the goal.
        if helper.is_goal_state(current_state):
        
            action_list = build_solution(best_path, current_node)
            break

        # Expand the node.
        total_nodes_expanded += 1
        action_state_dict = helper.get_successor(current_state)
        for action, state in action_state_dict.items():

            # The successor function actually stores items in the
            # action -> (next_state, cost) format.
            next_state, action_cost = state
            
            # Only process valid states.
            if is_invalid(next_state):
            
                continue
            
            next_node = Node(next_state,
                current_node,
                current_node.get_depth() + 1,
                action,
                action_cost)
                
            g_value = compute_g(algorithm, next_node, goal_state)
            
            # If a cheaper path is found to the next_state, then we can
            # add the next_state to the fringe.
            if g_value < g_score.get(next_state, float("inf")):
            
                # Remember the cheaper path to the next_state from the
                # current_state/current_node.
                #
                # We need the node since we want to remember the action as well.
                best_path[next_state] = current_node
            
                # Remember the cheaper path cost.
                g_score[next_state] = g_value
                
                # Compute the f-value and add to the fringe (unless it is
                # already there).
                f_score = g_value + compute_h(algorithm, next_node, goal_state)
                if not priority_queue.contains(next_state):
                
                    priority_queue.push(f_score, next_node)

    if time.time() >= time_limit:
    
        raise SearchTimeOutError("Search timed out after %u secs." % (time_limit))

    return action_list, total_nodes_expanded

def submit(file_handle):
    """
        Runs the tests that need to be submitted as a part of this Homework.
        
        Parameters
        ===========
            file_handle: int
                The file descriptor where the results will be output.
    """
    
    SEEDS = [0, 0xDEADC0DE, 0xBADC0DE, 0x500D, 0xABBABAAB]
    DIMENSION_PAIRS = [
        
        # (Grid dimension, Num obstacles)
        # Each grid dimension contains runs with 0%, 10%, 20%, 30%, 40% of max 
        # obstacles possible.
        (4, 0), (4, 4), (4, 8), (4, 12), (4, 16),
        (8, 0), (8, 14), (8, 28), (8, 43), (8, 57),
        (12, 0), (12, 31), (12, 62), (12, 93), (12, 124), 
        (16, 0), (16, 54), (16, 108), (16, 163), (16, 217),
    ]
    
    total = len(SEEDS) * len(DIMENSION_PAIRS)
    current = 0

    for dimension, obstacles in DIMENSION_PAIRS:
        for seed in SEEDS:
   
            current += 1 
            print("(%3u/%3u) Running dimension=%s, obstacles=%s, seed=%s" % (
                current,
                total,
                dimension,
                obstacles,
                seed))
            
            run_search(file_handle, dimension, obstacles, seed, algorithms,
                time_limit=SUBMIT_SEARCH_TIME_LIMIT, debug=False)
   
def run_search(file_handle, dimension, obstacles, seed, algorithms, 
    time_limit=float("inf"), debug=True):
    """
        Runs the search for the specified algorithms.
        
        Parameters
        ===========
            file_handle: int
                A descriptor for the output file where the results will be
                written.
            dimension: int
                The dimensions of the grid.
            obstacles: int
                The number of obstacles in the grid.
            seed: int
                The random seed to use in generating the grid.
            algorithms: list(str)
                The algorithms to run.
            time_limit: int
                The time limit in seconds.
            debug: bool
                True to enable debug output, False otherwise.
    """
    
    # Generate the world.
    generate_maze(dimension, obstacles, seed)
    
    # Run search for each algorithm.
    for algorithm in algorithms:
    
        error = "None"
        actions = []
        total_nodes_expanded = 0
        start_time = time.time()
        
        # Catch any errors and set the error field accordingly.
        try:
            actions, total_nodes_expanded = search(algorithm, time_limit)
        except NotImplementedError:
        
            error = "NotImplementedError"
        except MemoryError:
        
            error = "MemoryError"
        except Exception as e:
        
            error = str(type(e))
            
        time_taken = time.time() - start_time
        time_taken = "%.2f" % (time_taken)
        
        if debug:
        
            print("==========================")
            print("Dimension..........: " + str(dimension))
            print("Obstacles..........: " + str(obstacles))
            print("Seed...............: " + str(seed))
            print("Algorithm..........: " + algorithm)
            print("Error..............: " + error)
            print("Time Taken.........: " + str(time_taken))
            print("Nodes expanded.....: " + (str(total_nodes_expanded)))
            print("Plan Length........: " + str(len(actions)))
            print("Plan...............: " + str(actions))
        
        if file_handle is not None:
        
            plan_str = '_'.join(action for action in actions)
            file_handle.write("%s, %s, %s, %s, %s, %s, %s, %s, %s\n" % (
                dimension, obstacles, seed, algorithm,
                time_taken, total_nodes_expanded, len(actions), error, 
                plan_str))


if __name__ == "__main__":

    # Parse the arguments.
    args = parse_args()

    # Check which algorithms we are running.
    if args.algorithm is None or "all" == args.algorithm or args.submit:
    
        algorithms = ["bfs", "ucs", "gbfs", "astar", "custom-astar"]
    else:
    
        algorithms = [args.algorithm]
    
    # Setup the output file.
    if args.output_file is not None:
        
        file_handle = open(args.output_file, "w")
    elif args.submit:
    
        file_name = os.path.join(os.path.dirname(__file__), SUBMIT_FILENAME)
        file_handle = open(file_name, "w")
    else:
    
        file_handle = None
    
    # Write the header if we are writing output to a file as well.
    if file_handle is not None:
    
        file_handle.write("Dimension, Obstacles, Seed, Algorithm, Time, "
            "Nodes Expanded, Plan Length, Error, Plan\n")
    
    # Initialize ROS core.
    initialize_ros()

    # Initialize this node as a ROS node.
    rospy.init_node("search")
    
    # Initialize the search server.
    initialize_search_server()

    # If using submit mode, run the submission files.
    if args.submit:
    
        submit(file_handle)
    else:

        # Else, run an individual search.
        run_search(file_handle, args.dimension, args.obstacles, args.seed, 
            algorithms)

    # Cleanup ROS core.
    cleanup_ros()
