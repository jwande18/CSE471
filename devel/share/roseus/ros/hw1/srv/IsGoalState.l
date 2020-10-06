;; Auto-generated. Do not edit!


(when (boundp 'hw1::IsGoalState)
  (if (not (find-package "HW1"))
    (make-package "HW1"))
  (shadow 'IsGoalState (find-package "HW1")))
(unless (find-package "HW1::ISGOALSTATE")
  (make-package "HW1::ISGOALSTATE"))
(unless (find-package "HW1::ISGOALSTATEREQUEST")
  (make-package "HW1::ISGOALSTATEREQUEST"))
(unless (find-package "HW1::ISGOALSTATERESPONSE")
  (make-package "HW1::ISGOALSTATERESPONSE"))

(in-package "ROS")





(defclass hw1::IsGoalStateRequest
  :super ros::object
  :slots (_x _y ))

(defmethod hw1::IsGoalStateRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hw1::IsGoalStateResponse
  :super ros::object
  :slots (_is_goal ))

(defmethod hw1::IsGoalStateResponse
  (:init
   (&key
    ((:is_goal __is_goal) 0.0)
    )
   (send-super :init)
   (setq _is_goal (float __is_goal))
   self)
  (:is_goal
   (&optional __is_goal)
   (if __is_goal (setq _is_goal __is_goal)) _is_goal)
  (:serialization-length
   ()
   (+
    ;; float64 _is_goal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _is_goal
       (sys::poke _is_goal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _is_goal
     (setq _is_goal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hw1::IsGoalState
  :super ros::object
  :slots ())

(setf (get hw1::IsGoalState :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get hw1::IsGoalState :datatype-) "hw1/IsGoalState")
(setf (get hw1::IsGoalState :request) hw1::IsGoalStateRequest)
(setf (get hw1::IsGoalState :response) hw1::IsGoalStateResponse)

(defmethod hw1::IsGoalStateRequest
  (:response () (instance hw1::IsGoalStateResponse :init)))

(setf (get hw1::IsGoalStateRequest :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get hw1::IsGoalStateRequest :datatype-) "hw1/IsGoalStateRequest")
(setf (get hw1::IsGoalStateRequest :definition-)
      "float64 x
float64 y
---
float64 is_goal

")

(setf (get hw1::IsGoalStateResponse :md5sum-) "b368a2d5da7c88f49d77eafba906c151")
(setf (get hw1::IsGoalStateResponse :datatype-) "hw1/IsGoalStateResponse")
(setf (get hw1::IsGoalStateResponse :definition-)
      "float64 x
float64 y
---
float64 is_goal

")



(provide :hw1/IsGoalState "b368a2d5da7c88f49d77eafba906c151")


