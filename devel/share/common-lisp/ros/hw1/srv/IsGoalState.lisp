; Auto-generated. Do not edit!


(cl:in-package hw1-srv)


;//! \htmlinclude IsGoalState-request.msg.html

(cl:defclass <IsGoalState-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass IsGoalState-request (<IsGoalState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsGoalState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsGoalState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<IsGoalState-request> is deprecated: use hw1-srv:IsGoalState-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <IsGoalState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:x-val is deprecated.  Use hw1-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <IsGoalState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:y-val is deprecated.  Use hw1-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsGoalState-request>) ostream)
  "Serializes a message object of type '<IsGoalState-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsGoalState-request>) istream)
  "Deserializes a message object of type '<IsGoalState-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsGoalState-request>)))
  "Returns string type for a service object of type '<IsGoalState-request>"
  "hw1/IsGoalStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsGoalState-request)))
  "Returns string type for a service object of type 'IsGoalState-request"
  "hw1/IsGoalStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsGoalState-request>)))
  "Returns md5sum for a message object of type '<IsGoalState-request>"
  "b368a2d5da7c88f49d77eafba906c151")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsGoalState-request)))
  "Returns md5sum for a message object of type 'IsGoalState-request"
  "b368a2d5da7c88f49d77eafba906c151")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsGoalState-request>)))
  "Returns full string definition for message of type '<IsGoalState-request>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsGoalState-request)))
  "Returns full string definition for message of type 'IsGoalState-request"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsGoalState-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsGoalState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsGoalState-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude IsGoalState-response.msg.html

(cl:defclass <IsGoalState-response> (roslisp-msg-protocol:ros-message)
  ((is_goal
    :reader is_goal
    :initarg :is_goal
    :type cl:float
    :initform 0.0))
)

(cl:defclass IsGoalState-response (<IsGoalState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsGoalState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsGoalState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<IsGoalState-response> is deprecated: use hw1-srv:IsGoalState-response instead.")))

(cl:ensure-generic-function 'is_goal-val :lambda-list '(m))
(cl:defmethod is_goal-val ((m <IsGoalState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:is_goal-val is deprecated.  Use hw1-srv:is_goal instead.")
  (is_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsGoalState-response>) ostream)
  "Serializes a message object of type '<IsGoalState-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'is_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsGoalState-response>) istream)
  "Deserializes a message object of type '<IsGoalState-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_goal) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsGoalState-response>)))
  "Returns string type for a service object of type '<IsGoalState-response>"
  "hw1/IsGoalStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsGoalState-response)))
  "Returns string type for a service object of type 'IsGoalState-response"
  "hw1/IsGoalStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsGoalState-response>)))
  "Returns md5sum for a message object of type '<IsGoalState-response>"
  "b368a2d5da7c88f49d77eafba906c151")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsGoalState-response)))
  "Returns md5sum for a message object of type 'IsGoalState-response"
  "b368a2d5da7c88f49d77eafba906c151")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsGoalState-response>)))
  "Returns full string definition for message of type '<IsGoalState-response>"
  (cl:format cl:nil "float64 is_goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsGoalState-response)))
  "Returns full string definition for message of type 'IsGoalState-response"
  (cl:format cl:nil "float64 is_goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsGoalState-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsGoalState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsGoalState-response
    (cl:cons ':is_goal (is_goal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsGoalState)))
  'IsGoalState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsGoalState)))
  'IsGoalState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsGoalState)))
  "Returns string type for a service object of type '<IsGoalState>"
  "hw1/IsGoalState")