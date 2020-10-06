; Auto-generated. Do not edit!


(cl:in-package hw1-srv)


;//! \htmlinclude GetInitialState-request.msg.html

(cl:defclass <GetInitialState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetInitialState-request (<GetInitialState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitialState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitialState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<GetInitialState-request> is deprecated: use hw1-srv:GetInitialState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitialState-request>) ostream)
  "Serializes a message object of type '<GetInitialState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitialState-request>) istream)
  "Deserializes a message object of type '<GetInitialState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitialState-request>)))
  "Returns string type for a service object of type '<GetInitialState-request>"
  "hw1/GetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState-request)))
  "Returns string type for a service object of type 'GetInitialState-request"
  "hw1/GetInitialStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitialState-request>)))
  "Returns md5sum for a message object of type '<GetInitialState-request>"
  "3601ae784a1cdef6da6662412292fe03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitialState-request)))
  "Returns md5sum for a message object of type 'GetInitialState-request"
  "3601ae784a1cdef6da6662412292fe03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitialState-request>)))
  "Returns full string definition for message of type '<GetInitialState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitialState-request)))
  "Returns full string definition for message of type 'GetInitialState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitialState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitialState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitialState-request
))
;//! \htmlinclude GetInitialState-response.msg.html

(cl:defclass <GetInitialState-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass GetInitialState-response (<GetInitialState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitialState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitialState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw1-srv:<GetInitialState-response> is deprecated: use hw1-srv:GetInitialState-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:x-val is deprecated.  Use hw1-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:y-val is deprecated.  Use hw1-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <GetInitialState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw1-srv:direction-val is deprecated.  Use hw1-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitialState-response>) ostream)
  "Serializes a message object of type '<GetInitialState-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitialState-response>) istream)
  "Deserializes a message object of type '<GetInitialState-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitialState-response>)))
  "Returns string type for a service object of type '<GetInitialState-response>"
  "hw1/GetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState-response)))
  "Returns string type for a service object of type 'GetInitialState-response"
  "hw1/GetInitialStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitialState-response>)))
  "Returns md5sum for a message object of type '<GetInitialState-response>"
  "3601ae784a1cdef6da6662412292fe03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitialState-response)))
  "Returns md5sum for a message object of type 'GetInitialState-response"
  "3601ae784a1cdef6da6662412292fe03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitialState-response>)))
  "Returns full string definition for message of type '<GetInitialState-response>"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitialState-response)))
  "Returns full string definition for message of type 'GetInitialState-response"
  (cl:format cl:nil "float64 x~%float64 y~%string direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitialState-response>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitialState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitialState-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':direction (direction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInitialState)))
  'GetInitialState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInitialState)))
  'GetInitialState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitialState)))
  "Returns string type for a service object of type '<GetInitialState>"
  "hw1/GetInitialState")