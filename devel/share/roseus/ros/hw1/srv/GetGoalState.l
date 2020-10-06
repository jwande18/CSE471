;; Auto-generated. Do not edit!


(when (boundp 'hw1::GetGoalState)
  (if (not (find-package "HW1"))
    (make-package "HW1"))
  (shadow 'GetGoalState (find-package "HW1")))
(unless (find-package "HW1::GETGOALSTATE")
  (make-package "HW1::GETGOALSTATE"))
(unless (find-package "HW1::GETGOALSTATEREQUEST")
  (make-package "HW1::GETGOALSTATEREQUEST"))
(unless (find-package "HW1::GETGOALSTATERESPONSE")
  (make-package "HW1::GETGOALSTATERESPONSE"))

(in-package "ROS")





(defclass hw1::GetGoalStateRequest
  :super ros::object
  :slots ())

(defmethod hw1::GetGoalStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hw1::GetGoalStateResponse
  :super ros::object
  :slots (_x _y ))

(defmethod hw1::GetGoalStateResponse
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

(defclass hw1::GetGoalState
  :super ros::object
  :slots ())

(setf (get hw1::GetGoalState :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get hw1::GetGoalState :datatype-) "hw1/GetGoalState")
(setf (get hw1::GetGoalState :request) hw1::GetGoalStateRequest)
(setf (get hw1::GetGoalState :response) hw1::GetGoalStateResponse)

(defmethod hw1::GetGoalStateRequest
  (:response () (instance hw1::GetGoalStateResponse :init)))

(setf (get hw1::GetGoalStateRequest :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get hw1::GetGoalStateRequest :datatype-) "hw1/GetGoalStateRequest")
(setf (get hw1::GetGoalStateRequest :definition-)
      "---
float64 x
float64 y

")

(setf (get hw1::GetGoalStateResponse :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get hw1::GetGoalStateResponse :datatype-) "hw1/GetGoalStateResponse")
(setf (get hw1::GetGoalStateResponse :definition-)
      "---
float64 x
float64 y

")



(provide :hw1/GetGoalState "209f516d3eb691f0663e25cb750d67c1")


