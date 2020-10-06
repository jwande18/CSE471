;; Auto-generated. Do not edit!


(when (boundp 'hw1::GetInitialState)
  (if (not (find-package "HW1"))
    (make-package "HW1"))
  (shadow 'GetInitialState (find-package "HW1")))
(unless (find-package "HW1::GETINITIALSTATE")
  (make-package "HW1::GETINITIALSTATE"))
(unless (find-package "HW1::GETINITIALSTATEREQUEST")
  (make-package "HW1::GETINITIALSTATEREQUEST"))
(unless (find-package "HW1::GETINITIALSTATERESPONSE")
  (make-package "HW1::GETINITIALSTATERESPONSE"))

(in-package "ROS")





(defclass hw1::GetInitialStateRequest
  :super ros::object
  :slots ())

(defmethod hw1::GetInitialStateRequest
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

(defclass hw1::GetInitialStateResponse
  :super ros::object
  :slots (_x _y _direction ))

(defmethod hw1::GetInitialStateResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _direction (string __direction))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hw1::GetInitialState
  :super ros::object
  :slots ())

(setf (get hw1::GetInitialState :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get hw1::GetInitialState :datatype-) "hw1/GetInitialState")
(setf (get hw1::GetInitialState :request) hw1::GetInitialStateRequest)
(setf (get hw1::GetInitialState :response) hw1::GetInitialStateResponse)

(defmethod hw1::GetInitialStateRequest
  (:response () (instance hw1::GetInitialStateResponse :init)))

(setf (get hw1::GetInitialStateRequest :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get hw1::GetInitialStateRequest :datatype-) "hw1/GetInitialStateRequest")
(setf (get hw1::GetInitialStateRequest :definition-)
      "---
float64 x
float64 y
string direction

")

(setf (get hw1::GetInitialStateResponse :md5sum-) "3601ae784a1cdef6da6662412292fe03")
(setf (get hw1::GetInitialStateResponse :datatype-) "hw1/GetInitialStateResponse")
(setf (get hw1::GetInitialStateResponse :definition-)
      "---
float64 x
float64 y
string direction

")



(provide :hw1/GetInitialState "3601ae784a1cdef6da6662412292fe03")


