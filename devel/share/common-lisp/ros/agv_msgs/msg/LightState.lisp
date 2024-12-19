; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude LightState.msg.html

(cl:defclass <LightState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (freq
    :reader freq
    :initarg :freq
    :type cl:float
    :initform 0.0)
   (duty
    :reader duty
    :initarg :duty
    :type cl:float
    :initform 0.0)
   (periods_set
    :reader periods_set
    :initarg :periods_set
    :type cl:integer
    :initform 0)
   (periods_remaining
    :reader periods_remaining
    :initarg :periods_remaining
    :type cl:integer
    :initform 0))
)

(cl:defclass LightState (<LightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<LightState> is deprecated: use agv_msgs-msg:LightState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:freq-val is deprecated.  Use agv_msgs-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'duty-val :lambda-list '(m))
(cl:defmethod duty-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:duty-val is deprecated.  Use agv_msgs-msg:duty instead.")
  (duty m))

(cl:ensure-generic-function 'periods_set-val :lambda-list '(m))
(cl:defmethod periods_set-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:periods_set-val is deprecated.  Use agv_msgs-msg:periods_set instead.")
  (periods_set m))

(cl:ensure-generic-function 'periods_remaining-val :lambda-list '(m))
(cl:defmethod periods_remaining-val ((m <LightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:periods_remaining-val is deprecated.  Use agv_msgs-msg:periods_remaining instead.")
  (periods_remaining m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightState>) ostream)
  "Serializes a message object of type '<LightState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'periods_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'periods_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'periods_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'periods_set)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'periods_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'periods_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'periods_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'periods_remaining)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightState>) istream)
  "Deserializes a message object of type '<LightState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'periods_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'periods_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'periods_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'periods_set)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'periods_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'periods_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'periods_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'periods_remaining)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightState>)))
  "Returns string type for a message object of type '<LightState>"
  "agv_msgs/LightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightState)))
  "Returns string type for a message object of type 'LightState"
  "agv_msgs/LightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightState>)))
  "Returns md5sum for a message object of type '<LightState>"
  "a84044d93bb2367d8d3d39575e7564b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightState)))
  "Returns md5sum for a message object of type 'LightState"
  "a84044d93bb2367d8d3d39575e7564b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightState>)))
  "Returns full string definition for message of type '<LightState>"
  (cl:format cl:nil "string name~%float32 freq~%float32 duty~%uint32 periods_set~%uint32 periods_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightState)))
  "Returns full string definition for message of type 'LightState"
  (cl:format cl:nil "string name~%float32 freq~%float32 duty~%uint32 periods_set~%uint32 periods_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightState>))
  "Converts a ROS message object to a list"
  (cl:list 'LightState
    (cl:cons ':name (name msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':duty (duty msg))
    (cl:cons ':periods_set (periods_set msg))
    (cl:cons ':periods_remaining (periods_remaining msg))
))
