; Auto-generated. Do not edit!


(cl:in-package hw1-srv)


;//! \htmlinclude GenerateMaze-request.msg.html

(cl:defclass <GenerateMaze-request> (roslisp-msg-protocol:ros-message)
  ((dimension
    :reader dimension
    :initarg :dimension
    :type cl:integer
    :initform 0)
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type cl:integer
    :initform 0)
   (seed
    :reader seed
    :initarg :seed
    :type cl:integer
    :initform 0))
)

(cl:defclass GenerateMaze-request (<GenerateMaze-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateMaze-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateMaze-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<GenerateMaze-request> is deprecated: use hw1-srv:GenerateMaze-request instead.")))

(cl:ensure-generic-function 'dimension-val :lambda-list '(m))
(cl:defmethod dimension-val ((m <GenerateMaze-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:dimension-val is deprecated.  Use hw1-srv:dimension instead.")
  (dimension m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <GenerateMaze-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:obstacles-val is deprecated.  Use hw1-srv:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'seed-val :lambda-list '(m))
(cl:defmethod seed-val ((m <GenerateMaze-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:seed-val is deprecated.  Use hw1-srv:seed instead.")
  (seed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateMaze-request>) ostream)
  "Serializes a message object of type '<GenerateMaze-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dimension)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dimension)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dimension)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dimension)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstacles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obstacles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obstacles)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateMaze-request>) istream)
  "Deserializes a message object of type '<GenerateMaze-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dimension)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dimension)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dimension)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dimension)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstacles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obstacles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obstacles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obstacles)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateMaze-request>)))
  "Returns string type for a service object of type '<GenerateMaze-request>"
  "hw1/GenerateMazeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateMaze-request)))
  "Returns string type for a service object of type 'GenerateMaze-request"
  "hw1/GenerateMazeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateMaze-request>)))
  "Returns md5sum for a message object of type '<GenerateMaze-request>"
  "91077eae89da535fbefd16adcdc2fbc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateMaze-request)))
  "Returns md5sum for a message object of type 'GenerateMaze-request"
  "91077eae89da535fbefd16adcdc2fbc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateMaze-request>)))
  "Returns full string definition for message of type '<GenerateMaze-request>"
  (cl:format cl:nil "uint32 dimension~%uint32 obstacles~%uint32 seed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateMaze-request)))
  "Returns full string definition for message of type 'GenerateMaze-request"
  (cl:format cl:nil "uint32 dimension~%uint32 obstacles~%uint32 seed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateMaze-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateMaze-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateMaze-request
    (cl:cons ':dimension (dimension msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':seed (seed msg))
))
;//! \htmlinclude GenerateMaze-response.msg.html

(cl:defclass <GenerateMaze-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:integer
    :initform 0))
)

(cl:defclass GenerateMaze-response (<GenerateMaze-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateMaze-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateMaze-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<GenerateMaze-response> is deprecated: use hw1-srv:GenerateMaze-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <GenerateMaze-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:done-val is deprecated.  Use hw1-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateMaze-response>) ostream)
  "Serializes a message object of type '<GenerateMaze-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'done)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'done)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'done)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'done)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateMaze-response>) istream)
  "Deserializes a message object of type '<GenerateMaze-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'done)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'done)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'done)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'done)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateMaze-response>)))
  "Returns string type for a service object of type '<GenerateMaze-response>"
  "hw1/GenerateMazeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateMaze-response)))
  "Returns string type for a service object of type 'GenerateMaze-response"
  "hw1/GenerateMazeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateMaze-response>)))
  "Returns md5sum for a message object of type '<GenerateMaze-response>"
  "91077eae89da535fbefd16adcdc2fbc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateMaze-response)))
  "Returns md5sum for a message object of type 'GenerateMaze-response"
  "91077eae89da535fbefd16adcdc2fbc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateMaze-response>)))
  "Returns full string definition for message of type '<GenerateMaze-response>"
  (cl:format cl:nil "uint32 done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateMaze-response)))
  "Returns full string definition for message of type 'GenerateMaze-response"
  (cl:format cl:nil "uint32 done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateMaze-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateMaze-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateMaze-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateMaze)))
  'GenerateMaze-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateMaze)))
  'GenerateMaze-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateMaze)))
  "Returns string type for a service object of type '<GenerateMaze>"
  "hw1/GenerateMaze")