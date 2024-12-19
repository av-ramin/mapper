; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ProximitySafetyStatus.msg.html

(cl:defclass <ProximitySafetyStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ProximitySafetyStatus (<ProximitySafetyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProximitySafetyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProximitySafetyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ProximitySafetyStatus> is deprecated: use agv_msgs-msg:ProximitySafetyStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProximitySafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ProximitySafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:data-val is deprecated.  Use agv_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ProximitySafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:status-val is deprecated.  Use agv_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProximitySafetyStatus>)))
    "Constants for message type '<ProximitySafetyStatus>"
  '((:OK . 0)
    (:OK_BUT_TOO_SHAKY . 1)
    (:STARTING . 2)
    (:INIT . 3)
    (:DATA_MISSING . 4)
    (:PROXIMITY_SLOW . 5)
    (:PROXIMITY_ALERT . 6)
    (:STOP . 10)
    (:FORWARD . 11)
    (:BACKWARD . 12)
    (:EMPTY . 13)
    (:ALL_ZEROES . 14))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProximitySafetyStatus)))
    "Constants for message type 'ProximitySafetyStatus"
  '((:OK . 0)
    (:OK_BUT_TOO_SHAKY . 1)
    (:STARTING . 2)
    (:INIT . 3)
    (:DATA_MISSING . 4)
    (:PROXIMITY_SLOW . 5)
    (:PROXIMITY_ALERT . 6)
    (:STOP . 10)
    (:FORWARD . 11)
    (:BACKWARD . 12)
    (:EMPTY . 13)
    (:ALL_ZEROES . 14))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProximitySafetyStatus>) ostream)
  "Serializes a message object of type '<ProximitySafetyStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProximitySafetyStatus>) istream)
  "Deserializes a message object of type '<ProximitySafetyStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProximitySafetyStatus>)))
  "Returns string type for a message object of type '<ProximitySafetyStatus>"
  "agv_msgs/ProximitySafetyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProximitySafetyStatus)))
  "Returns string type for a message object of type 'ProximitySafetyStatus"
  "agv_msgs/ProximitySafetyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProximitySafetyStatus>)))
  "Returns md5sum for a message object of type '<ProximitySafetyStatus>"
  "4676bf30d3543840700826c4e939d3d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProximitySafetyStatus)))
  "Returns md5sum for a message object of type 'ProximitySafetyStatus"
  "4676bf30d3543840700826c4e939d3d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProximitySafetyStatus>)))
  "Returns full string definition for message of type '<ProximitySafetyStatus>"
  (cl:format cl:nil "Header  header~%float32 data~%~%uint8 status~%uint8 OK=0~%uint8 OK_BUT_TOO_SHAKY=1~%uint8 STARTING=2~%uint8 INIT=3~%uint8 DATA_MISSING=4~%uint8 PROXIMITY_SLOW=5~%uint8 PROXIMITY_ALERT=6~%uint8 STOP=10~%uint8 FORWARD=11~%uint8 BACKWARD=12~%uint8 EMPTY=13~%uint8 ALL_ZEROES=14~%~%# Statuses for using with proximity safety:~%# 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)~%# 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)~%# 2 - starting up (data is time since beginning of starting)~%# 3 - initializing - data is flowing (data is time since beginning of init)~%# 4 - data missing (data is time since last data)~%# 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)~%# 6 - proximity alert (data is distance to obstacle)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProximitySafetyStatus)))
  "Returns full string definition for message of type 'ProximitySafetyStatus"
  (cl:format cl:nil "Header  header~%float32 data~%~%uint8 status~%uint8 OK=0~%uint8 OK_BUT_TOO_SHAKY=1~%uint8 STARTING=2~%uint8 INIT=3~%uint8 DATA_MISSING=4~%uint8 PROXIMITY_SLOW=5~%uint8 PROXIMITY_ALERT=6~%uint8 STOP=10~%uint8 FORWARD=11~%uint8 BACKWARD=12~%uint8 EMPTY=13~%uint8 ALL_ZEROES=14~%~%# Statuses for using with proximity safety:~%# 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)~%# 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)~%# 2 - starting up (data is time since beginning of starting)~%# 3 - initializing - data is flowing (data is time since beginning of init)~%# 4 - data missing (data is time since last data)~%# 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)~%# 6 - proximity alert (data is distance to obstacle)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProximitySafetyStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProximitySafetyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ProximitySafetyStatus
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':status (status msg))
))
