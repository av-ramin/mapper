; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude RfTagInfo.msg.html

(cl:defclass <RfTagInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tag_addr
    :reader tag_addr
    :initarg :tag_addr
    :type cl:string
    :initform "")
   (anchor_addr
    :reader anchor_addr
    :initarg :anchor_addr
    :type cl:string
    :initform "")
   (dist_to_anchor
    :reader dist_to_anchor
    :initarg :dist_to_anchor
    :type cl:float
    :initform 0.0)
   (tag_frame
    :reader tag_frame
    :initarg :tag_frame
    :type cl:fixnum
    :initform 0)
   (btn0_state
    :reader btn0_state
    :initarg :btn0_state
    :type cl:boolean
    :initform cl:nil)
   (btn1_state
    :reader btn1_state
    :initarg :btn1_state
    :type cl:boolean
    :initform cl:nil)
   (btn2_state
    :reader btn2_state
    :initarg :btn2_state
    :type cl:boolean
    :initform cl:nil)
   (battery_lvl
    :reader battery_lvl
    :initarg :battery_lvl
    :type cl:fixnum
    :initform 0)
   (first_path_power
    :reader first_path_power
    :initarg :first_path_power
    :type cl:float
    :initform 0.0)
   (received_signal_strength
    :reader received_signal_strength
    :initarg :received_signal_strength
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type cl:float
    :initform 0.0))
)

(cl:defclass RfTagInfo (<RfTagInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfTagInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfTagInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<RfTagInfo> is deprecated: use agv_msgs-msg:RfTagInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tag_addr-val :lambda-list '(m))
(cl:defmethod tag_addr-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:tag_addr-val is deprecated.  Use agv_msgs-msg:tag_addr instead.")
  (tag_addr m))

(cl:ensure-generic-function 'anchor_addr-val :lambda-list '(m))
(cl:defmethod anchor_addr-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:anchor_addr-val is deprecated.  Use agv_msgs-msg:anchor_addr instead.")
  (anchor_addr m))

(cl:ensure-generic-function 'dist_to_anchor-val :lambda-list '(m))
(cl:defmethod dist_to_anchor-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist_to_anchor-val is deprecated.  Use agv_msgs-msg:dist_to_anchor instead.")
  (dist_to_anchor m))

(cl:ensure-generic-function 'tag_frame-val :lambda-list '(m))
(cl:defmethod tag_frame-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:tag_frame-val is deprecated.  Use agv_msgs-msg:tag_frame instead.")
  (tag_frame m))

(cl:ensure-generic-function 'btn0_state-val :lambda-list '(m))
(cl:defmethod btn0_state-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:btn0_state-val is deprecated.  Use agv_msgs-msg:btn0_state instead.")
  (btn0_state m))

(cl:ensure-generic-function 'btn1_state-val :lambda-list '(m))
(cl:defmethod btn1_state-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:btn1_state-val is deprecated.  Use agv_msgs-msg:btn1_state instead.")
  (btn1_state m))

(cl:ensure-generic-function 'btn2_state-val :lambda-list '(m))
(cl:defmethod btn2_state-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:btn2_state-val is deprecated.  Use agv_msgs-msg:btn2_state instead.")
  (btn2_state m))

(cl:ensure-generic-function 'battery_lvl-val :lambda-list '(m))
(cl:defmethod battery_lvl-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:battery_lvl-val is deprecated.  Use agv_msgs-msg:battery_lvl instead.")
  (battery_lvl m))

(cl:ensure-generic-function 'first_path_power-val :lambda-list '(m))
(cl:defmethod first_path_power-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:first_path_power-val is deprecated.  Use agv_msgs-msg:first_path_power instead.")
  (first_path_power m))

(cl:ensure-generic-function 'received_signal_strength-val :lambda-list '(m))
(cl:defmethod received_signal_strength-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:received_signal_strength-val is deprecated.  Use agv_msgs-msg:received_signal_strength instead.")
  (received_signal_strength m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <RfTagInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:covariance-val is deprecated.  Use agv_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfTagInfo>) ostream)
  "Serializes a message object of type '<RfTagInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_addr))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'anchor_addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'anchor_addr))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_to_anchor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn0_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn1_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn2_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_lvl)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'first_path_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'received_signal_strength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfTagInfo>) istream)
  "Deserializes a message object of type '<RfTagInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_addr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_addr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'anchor_addr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'anchor_addr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_anchor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_frame)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'btn0_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn1_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'btn2_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_lvl)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'first_path_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'received_signal_strength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'covariance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfTagInfo>)))
  "Returns string type for a message object of type '<RfTagInfo>"
  "agv_msgs/RfTagInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfTagInfo)))
  "Returns string type for a message object of type 'RfTagInfo"
  "agv_msgs/RfTagInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfTagInfo>)))
  "Returns md5sum for a message object of type '<RfTagInfo>"
  "b788a49c92ea14828852cd337a50704a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfTagInfo)))
  "Returns md5sum for a message object of type 'RfTagInfo"
  "b788a49c92ea14828852cd337a50704a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfTagInfo>)))
  "Returns full string definition for message of type '<RfTagInfo>"
  (cl:format cl:nil "Header header~%string tag_addr~%string anchor_addr~%float32 dist_to_anchor~%uint8 tag_frame~%bool btn0_state~%bool btn1_state~%bool btn2_state~%uint8 battery_lvl~%float32 first_path_power~%float32 received_signal_strength~%float32 covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfTagInfo)))
  "Returns full string definition for message of type 'RfTagInfo"
  (cl:format cl:nil "Header header~%string tag_addr~%string anchor_addr~%float32 dist_to_anchor~%uint8 tag_frame~%bool btn0_state~%bool btn1_state~%bool btn2_state~%uint8 battery_lvl~%float32 first_path_power~%float32 received_signal_strength~%float32 covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfTagInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'tag_addr))
     4 (cl:length (cl:slot-value msg 'anchor_addr))
     4
     1
     1
     1
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfTagInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RfTagInfo
    (cl:cons ':header (header msg))
    (cl:cons ':tag_addr (tag_addr msg))
    (cl:cons ':anchor_addr (anchor_addr msg))
    (cl:cons ':dist_to_anchor (dist_to_anchor msg))
    (cl:cons ':tag_frame (tag_frame msg))
    (cl:cons ':btn0_state (btn0_state msg))
    (cl:cons ':btn1_state (btn1_state msg))
    (cl:cons ':btn2_state (btn2_state msg))
    (cl:cons ':battery_lvl (battery_lvl msg))
    (cl:cons ':first_path_power (first_path_power msg))
    (cl:cons ':received_signal_strength (received_signal_strength msg))
    (cl:cons ':covariance (covariance msg))
))
