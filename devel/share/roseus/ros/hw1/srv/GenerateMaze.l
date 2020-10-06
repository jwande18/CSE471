;; Auto-generated. Do not edit!


(when (boundp 'hw1::GenerateMaze)
  (if (not (find-package "HW1"))
    (make-package "HW1"))
  (shadow 'GenerateMaze (find-package "HW1")))
(unless (find-package "HW1::GENERATEMAZE")
  (make-package "HW1::GENERATEMAZE"))
(unless (find-package "HW1::GENERATEMAZEREQUEST")
  (make-package "HW1::GENERATEMAZEREQUEST"))
(unless (find-package "HW1::GENERATEMAZERESPONSE")
  (make-package "HW1::GENERATEMAZERESPONSE"))

(in-package "ROS")





(defclass hw1::GenerateMazeRequest
  :super ros::object
  :slots (_dimension _obstacles _seed ))

(defmethod hw1::GenerateMazeRequest
  (:init
   (&key
    ((:dimension __dimension) 0)
    ((:obstacles __obstacles) 0)
    ((:seed __seed) 0)
    )
   (send-super :init)
   (setq _dimension (round __dimension))
   (setq _obstacles (round __obstacles))
   (setq _seed (round __seed))
   self)
  (:dimension
   (&optional __dimension)
   (if __dimension (setq _dimension __dimension)) _dimension)
  (:obstacles
   (&optional __obstacles)
   (if __obstacles (setq _obstacles __obstacles)) _obstacles)
  (:seed
   (&optional __seed)
   (if __seed (setq _seed __seed)) _seed)
  (:serialization-length
   ()
   (+
    ;; uint32 _dimension
    4
    ;; uint32 _obstacles
    4
    ;; uint32 _seed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _dimension
       (write-long _dimension s)
     ;; uint32 _obstacles
       (write-long _obstacles s)
     ;; uint32 _seed
       (write-long _seed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _dimension
     (setq _dimension (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _obstacles
     (setq _obstacles (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _seed
     (setq _seed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hw1::GenerateMazeResponse
  :super ros::object
  :slots (_done ))

(defmethod hw1::GenerateMazeResponse
  (:init
   (&key
    ((:done __done) 0)
    )
   (send-super :init)
   (setq _done (round __done))
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; uint32 _done
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _done
       (write-long _done s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _done
     (setq _done (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hw1::GenerateMaze
  :super ros::object
  :slots ())

(setf (get hw1::GenerateMaze :md5sum-) "91077eae89da535fbefd16adcdc2fbc7")
(setf (get hw1::GenerateMaze :datatype-) "hw1/GenerateMaze")
(setf (get hw1::GenerateMaze :request) hw1::GenerateMazeRequest)
(setf (get hw1::GenerateMaze :response) hw1::GenerateMazeResponse)

(defmethod hw1::GenerateMazeRequest
  (:response () (instance hw1::GenerateMazeResponse :init)))

(setf (get hw1::GenerateMazeRequest :md5sum-) "91077eae89da535fbefd16adcdc2fbc7")
(setf (get hw1::GenerateMazeRequest :datatype-) "hw1/GenerateMazeRequest")
(setf (get hw1::GenerateMazeRequest :definition-)
      "uint32 dimension
uint32 obstacles
uint32 seed
---
uint32 done

")

(setf (get hw1::GenerateMazeResponse :md5sum-) "91077eae89da535fbefd16adcdc2fbc7")
(setf (get hw1::GenerateMazeResponse :datatype-) "hw1/GenerateMazeResponse")
(setf (get hw1::GenerateMazeResponse :definition-)
      "uint32 dimension
uint32 obstacles
uint32 seed
---
uint32 done

")



(provide :hw1/GenerateMaze "91077eae89da535fbefd16adcdc2fbc7")


