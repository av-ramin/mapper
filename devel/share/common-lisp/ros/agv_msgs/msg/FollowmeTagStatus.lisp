; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude FollowmeTagStatus.msg.html

(cl:defclass <FollowmeTagStatus> (roslisp-msg-protocol:ros-message)
  ((dist_to_anchor
    :reader dist_to_anchor
    :initarg :dist_to_anchor
    :type cl:float
    :initform 0.0)
   (battery_lvl
    :reader battery_lvl
    :initarg :battery_lvl
    :type cl:fixnum
    :initform 0)
   (signal_quality
    :reader signal_quality
    :initarg :signal_quality
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FollowmeTagStatus (<FollowmeTagStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowmeTagStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowmeTagStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<FollowmeTagStatus> is deprecated: use agv_msgs-msg:FollowmeTagStatus instead.")))

(cl:ensure-generic-function 'dist_to_anchor-val :lambda-list '(m))
(cl:defmethod dist_to_anchor-val ((m <FollowmeTagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist_to_anchor-val is deprecated.  Use agv_msgs-msg:dist_to_anchor instead.")
  (dist_to_anchor m))

(cl:ensure-generic-function 'battery_lvl-val :lambda-list '(m))
(cl:defmethod battery_lvl-val ((m <FollowmeTagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:battery_lvl-val is deprecated.  Use agv_msgs-msg:battery_lvl instead.")
  (battery_lvl m))

(cl:ensure-generic-function 'signal_quality-val :lambda-list '(m))
(cl:defmethod signal_quality-val ((m <FollowmeTagStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:signal_quality-val is deprecated.  Use agv_msgs-msg:signal_quality instead.")
  (signal_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowmeTagStatus>) ostream)
  "Serializes a message object of type '<FollowmeTagStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_to_anchor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_lvl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_quality)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowmeTagStatus>) istream)
  "Deserializes a message object of type '<FollowmeTagStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_anchor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_lvl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_quality)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowmeTagStatus>)))
  "Returns string type for a message object of type '<FollowmeTagStatus>"
  "agv_msgs/FollowmeTagStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowmeTagStatus)))
  "Returns string type for a message object of type 'FollowmeTagStatus"
  "agv_msgs/FollowmeTagStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowmeTagStatus>)))
  "Returns md5sum for a message object of type '<FollowmeTagStatus>"
  "13e8bc9b26611e630173d62b92a0ae8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowmeTagStatus)))
  "Returns md5sum for a message object of type 'FollowmeTagStatus"
  "13e8bc9b26611e630173d62b92a0ae8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowmeTagStatus>)))
  "Returns full string definition for message of type '<FollowmeTagStatus>"
  (cl:format cl:nil "float32 dist_to_anchor~%uint8 battery_lvl~%uint8 signal_quality~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowmeTagStatus)))
  "Returns full string definition for message of type 'FollowmeTagStatus"
  (cl:format cl:nil "float32 dist_to_anchor~%uint8 battery_lvl~%uint8 signal_quality~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowmeTagStatus>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowmeTagStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowmeTagStatus
    (cl:cons ':dist_to_anchor (dist_to_anchor msg))
    (cl:cons ':battery_lvl (battery_lvl msg))
    (cl:cons ':signal_quality (signal_quality msg))
))
