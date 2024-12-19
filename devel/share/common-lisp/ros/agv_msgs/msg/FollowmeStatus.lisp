; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude FollowmeStatus.msg.html

(cl:defclass <FollowmeStatus> (roslisp-msg-protocol:ros-message)
  ((distance_sp
    :reader distance_sp
    :initarg :distance_sp
    :type cl:float
    :initform 0.0)
   (angle_sp
    :reader angle_sp
    :initarg :angle_sp
    :type cl:float
    :initform 0.0)
   (live_distance
    :reader live_distance
    :initarg :live_distance
    :type cl:float
    :initform 0.0)
   (live_angle
    :reader live_angle
    :initarg :live_angle
    :type cl:float
    :initform 0.0)
   (velocity_limit
    :reader velocity_limit
    :initarg :velocity_limit
    :type cl:float
    :initform 0.0)
   (chosen_tag_name
    :reader chosen_tag_name
    :initarg :chosen_tag_name
    :type cl:string
    :initform "")
   (dist_on_the_path
    :reader dist_on_the_path
    :initarg :dist_on_the_path
    :type cl:float
    :initform 0.0)
   (mode_indirect
    :reader mode_indirect
    :initarg :mode_indirect
    :type cl:fixnum
    :initform 0)
   (start_active
    :reader start_active
    :initarg :start_active
    :type cl:boolean
    :initform cl:nil)
   (pause_active
    :reader pause_active
    :initarg :pause_active
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FollowmeStatus (<FollowmeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowmeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowmeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<FollowmeStatus> is deprecated: use agv_msgs-msg:FollowmeStatus instead.")))

(cl:ensure-generic-function 'distance_sp-val :lambda-list '(m))
(cl:defmethod distance_sp-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:distance_sp-val is deprecated.  Use agv_msgs-msg:distance_sp instead.")
  (distance_sp m))

(cl:ensure-generic-function 'angle_sp-val :lambda-list '(m))
(cl:defmethod angle_sp-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:angle_sp-val is deprecated.  Use agv_msgs-msg:angle_sp instead.")
  (angle_sp m))

(cl:ensure-generic-function 'live_distance-val :lambda-list '(m))
(cl:defmethod live_distance-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:live_distance-val is deprecated.  Use agv_msgs-msg:live_distance instead.")
  (live_distance m))

(cl:ensure-generic-function 'live_angle-val :lambda-list '(m))
(cl:defmethod live_angle-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:live_angle-val is deprecated.  Use agv_msgs-msg:live_angle instead.")
  (live_angle m))

(cl:ensure-generic-function 'velocity_limit-val :lambda-list '(m))
(cl:defmethod velocity_limit-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:velocity_limit-val is deprecated.  Use agv_msgs-msg:velocity_limit instead.")
  (velocity_limit m))

(cl:ensure-generic-function 'chosen_tag_name-val :lambda-list '(m))
(cl:defmethod chosen_tag_name-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:chosen_tag_name-val is deprecated.  Use agv_msgs-msg:chosen_tag_name instead.")
  (chosen_tag_name m))

(cl:ensure-generic-function 'dist_on_the_path-val :lambda-list '(m))
(cl:defmethod dist_on_the_path-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist_on_the_path-val is deprecated.  Use agv_msgs-msg:dist_on_the_path instead.")
  (dist_on_the_path m))

(cl:ensure-generic-function 'mode_indirect-val :lambda-list '(m))
(cl:defmethod mode_indirect-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:mode_indirect-val is deprecated.  Use agv_msgs-msg:mode_indirect instead.")
  (mode_indirect m))

(cl:ensure-generic-function 'start_active-val :lambda-list '(m))
(cl:defmethod start_active-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:start_active-val is deprecated.  Use agv_msgs-msg:start_active instead.")
  (start_active m))

(cl:ensure-generic-function 'pause_active-val :lambda-list '(m))
(cl:defmethod pause_active-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pause_active-val is deprecated.  Use agv_msgs-msg:pause_active instead.")
  (pause_active m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <FollowmeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:mode-val is deprecated.  Use agv_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FollowmeStatus>)))
    "Constants for message type '<FollowmeStatus>"
  '((:DIRECT . 1)
    (:INDIRECT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FollowmeStatus)))
    "Constants for message type 'FollowmeStatus"
  '((:DIRECT . 1)
    (:INDIRECT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowmeStatus>) ostream)
  "Serializes a message object of type '<FollowmeStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'live_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'live_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chosen_tag_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chosen_tag_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_on_the_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_indirect)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowmeStatus>) istream)
  "Deserializes a message object of type '<FollowmeStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_sp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_sp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'live_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'live_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chosen_tag_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chosen_tag_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_on_the_path) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_indirect)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pause_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowmeStatus>)))
  "Returns string type for a message object of type '<FollowmeStatus>"
  "agv_msgs/FollowmeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowmeStatus)))
  "Returns string type for a message object of type 'FollowmeStatus"
  "agv_msgs/FollowmeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowmeStatus>)))
  "Returns md5sum for a message object of type '<FollowmeStatus>"
  "352cd66af525f12fc4178354b47bfc2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowmeStatus)))
  "Returns md5sum for a message object of type 'FollowmeStatus"
  "352cd66af525f12fc4178354b47bfc2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowmeStatus>)))
  "Returns full string definition for message of type '<FollowmeStatus>"
  (cl:format cl:nil "float32 distance_sp~%float32 angle_sp~%float32 live_distance~%float32 live_angle~%float32 velocity_limit~%string chosen_tag_name~%float32 dist_on_the_path~%uint8 mode_indirect~%bool start_active~%bool pause_active~%uint8 mode~%uint8 DIRECT=1~%uint8 INDIRECT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowmeStatus)))
  "Returns full string definition for message of type 'FollowmeStatus"
  (cl:format cl:nil "float32 distance_sp~%float32 angle_sp~%float32 live_distance~%float32 live_angle~%float32 velocity_limit~%string chosen_tag_name~%float32 dist_on_the_path~%uint8 mode_indirect~%bool start_active~%bool pause_active~%uint8 mode~%uint8 DIRECT=1~%uint8 INDIRECT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowmeStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'chosen_tag_name))
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowmeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowmeStatus
    (cl:cons ':distance_sp (distance_sp msg))
    (cl:cons ':angle_sp (angle_sp msg))
    (cl:cons ':live_distance (live_distance msg))
    (cl:cons ':live_angle (live_angle msg))
    (cl:cons ':velocity_limit (velocity_limit msg))
    (cl:cons ':chosen_tag_name (chosen_tag_name msg))
    (cl:cons ':dist_on_the_path (dist_on_the_path msg))
    (cl:cons ':mode_indirect (mode_indirect msg))
    (cl:cons ':start_active (start_active msg))
    (cl:cons ':pause_active (pause_active msg))
    (cl:cons ':mode (mode msg))
))
