; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SplineDriveParam.msg.html

(cl:defclass <SplineDriveParam> (roslisp-msg-protocol:ros-message)
  ((position_offset
    :reader position_offset
    :initarg :position_offset
    :type cl:float
    :initform 0.0)
   (desired_v
    :reader desired_v
    :initarg :desired_v
    :type cl:float
    :initform 0.0)
   (max_a
    :reader max_a
    :initarg :max_a
    :type cl:float
    :initform 0.0)
   (incline_angle
    :reader incline_angle
    :initarg :incline_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SplineDriveParam (<SplineDriveParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplineDriveParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplineDriveParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SplineDriveParam> is deprecated: use agv_msgs-msg:SplineDriveParam instead.")))

(cl:ensure-generic-function 'position_offset-val :lambda-list '(m))
(cl:defmethod position_offset-val ((m <SplineDriveParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:position_offset-val is deprecated.  Use agv_msgs-msg:position_offset instead.")
  (position_offset m))

(cl:ensure-generic-function 'desired_v-val :lambda-list '(m))
(cl:defmethod desired_v-val ((m <SplineDriveParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:desired_v-val is deprecated.  Use agv_msgs-msg:desired_v instead.")
  (desired_v m))

(cl:ensure-generic-function 'max_a-val :lambda-list '(m))
(cl:defmethod max_a-val ((m <SplineDriveParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:max_a-val is deprecated.  Use agv_msgs-msg:max_a instead.")
  (max_a m))

(cl:ensure-generic-function 'incline_angle-val :lambda-list '(m))
(cl:defmethod incline_angle-val ((m <SplineDriveParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:incline_angle-val is deprecated.  Use agv_msgs-msg:incline_angle instead.")
  (incline_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplineDriveParam>) ostream)
  "Serializes a message object of type '<SplineDriveParam>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'incline_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplineDriveParam>) istream)
  "Deserializes a message object of type '<SplineDriveParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'incline_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplineDriveParam>)))
  "Returns string type for a message object of type '<SplineDriveParam>"
  "agv_msgs/SplineDriveParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplineDriveParam)))
  "Returns string type for a message object of type 'SplineDriveParam"
  "agv_msgs/SplineDriveParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplineDriveParam>)))
  "Returns md5sum for a message object of type '<SplineDriveParam>"
  "d3a6d815da24b8149fc628a98810f734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplineDriveParam)))
  "Returns md5sum for a message object of type 'SplineDriveParam"
  "d3a6d815da24b8149fc628a98810f734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplineDriveParam>)))
  "Returns full string definition for message of type '<SplineDriveParam>"
  (cl:format cl:nil "float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplineDriveParam)))
  "Returns full string definition for message of type 'SplineDriveParam"
  (cl:format cl:nil "float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplineDriveParam>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplineDriveParam>))
  "Converts a ROS message object to a list"
  (cl:list 'SplineDriveParam
    (cl:cons ':position_offset (position_offset msg))
    (cl:cons ':desired_v (desired_v msg))
    (cl:cons ':max_a (max_a msg))
    (cl:cons ':incline_angle (incline_angle msg))
))
