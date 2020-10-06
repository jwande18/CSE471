import math

def compute_g(algorithm, node, goal_state):
    """
        Evaluates the g() value.
        
        Parameters
        ===========
            algorithm: str
                The algorithm type based on which the g-value will be computed.
            node: Node
                The node whose g-value is to be computed.
            goal_state: State
                The goal state for the problem.
                
        Returns
        ========
            int
                The g-value for the node.
    """
    
    if algorithm == "bfs":
        # breadth-first search algorithm is considered "optimal" in the case
        # that all the edges of a tree have the same cost
        
        return 0
        
    elif algorithm == "ucs":
        # uniform-cost search algorithm is considered "optimal" in the case
        # that the solution has a finite cost and minimum arc - this is
        # implemented by the cost of each node representing the "total"
        # cost to get to that node based on its action.
        
        return node.get_total_action_cost()
        
    elif algorithm == "gbfs":
        # greedy best-first search algorithm does not the true cost from
        # root to 'node'
        
        return 0
        
    elif algorithm == "astar":
        # A* algorithm utilizes the g(n) to be the cost to reach the node
        # from the root

        return node.get_total_action_cost()

    elif algorithm == "custom-astar":
        # the custom A* algorithm utilizes g(n) to be the cost to reach
        # the node from the root

        return node.get_total_action_cost()
        
    # Should never reach here.
    assert False
    return float("inf")
    
def compute_h(algorithm, node, goal_state):
    """
        Evaluates the h() value.
        
        Parameters
        ===========
            algorithm: str
                The algorithm type based on which the h-value will be computed.
            node: Node
                The node whose h-value is to be computed.
            goal_state: State
                The goal state for the problem.

        Returns
        ========
            int
                The h-value for the node.
    """
    
    if algorithm == "bfs":
        # breadth-first search is an uninformed search algorithm
        # (i.e. blind search); therefore, it uses no heuristic.
        
        return 0

    elif algorithm == "ucs":
        # uniform-cost search is an uninformed search algorithm
        # that does not utilize a heuristic to calculate cost.
        
        return 0
        
    elif algorithm == "gbfs":
        # greedy best-first search uses ONLY the heuristic function to select
        # the nodes that are closest to the goal - the heuristic function here
        # will be the manhattan heuristic function
        
        x = abs(goal_state.get_x() - node.get_state().get_x())
        y = abs(goal_state.get_y() - node.get_state().get_y())
        
        return (x + y)
    
    elif algorithm == "astar":
        # A* algorithm utilizes the heuristic as well to calculate the cost
        # of a given node. For this example, the manhattan heuristic will be
        # used as well

        x = abs(goal_state.get_x() - node.get_state().get_x())
        y = abs(goal_state.get_y() - node.get_state().get_y())

        return (x + y)

    elif algorithm == "custom-astar":
        # custom A* heuristic developed represents the euclidean distance
        # between the node and the goal.
        #
        # This implementation is based around the formula to determine the
        # euclidean distance between two points (x1, y1) and (x2, y2).
        #
        # The formula is as follows: ED = sqrt((x2 - x1)^2 + (y2 - y1)^2)
        
        x1 = node.get_state().get_x()
        y1 = node.get_state().get_y()
        x2 = goal_state.get_x()
        y2 = goal_state.get_y()
        
        dist = math.sqrt((pow((x2 - x1), 2)) + (pow((y2 - y1), 2)))
        
        return int(dist)
        
    # Should never reach here.
    assert False
    return float("inf")
