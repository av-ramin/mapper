; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavigationStatus.msg.html

(cl:defclass <NavigationStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path_id
    :reader path_id
    :initarg :path_id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (current_waypoint_id
    :reader current_waypoint_id
    :initarg :current_waypoint_id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (paused
    :reader paused
    :initarg :paused
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (config
    :reader config
    :initarg :config
    :type agv_msgs-msg:NavigationConfig
    :initform (cl:make-instance 'agv_msgs-msg:NavigationConfig))
   (loop_iteration
    :reader loop_iteration
    :initarg :loop_iteration
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavigationStatus (<NavigationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavigationStatus> is deprecated: use agv_msgs-msg:NavigationStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:path_id-val is deprecated.  Use agv_msgs-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'current_waypoint_id-val :lambda-list '(m))
(cl:defmethod current_waypoint_id-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:current_waypoint_id-val is deprecated.  Use agv_msgs-msg:current_waypoint_id instead.")
  (current_waypoint_id m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:active-val is deprecated.  Use agv_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'paused-val :lambda-list '(m))
(cl:defmethod paused-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:paused-val is deprecated.  Use agv_msgs-msg:paused instead.")
  (paused m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:mode-val is deprecated.  Use agv_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:config-val is deprecated.  Use agv_msgs-msg:config instead.")
  (config m))

(cl:ensure-generic-function 'loop_iteration-val :lambda-list '(m))
(cl:defmethod loop_iteration-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:loop_iteration-val is deprecated.  Use agv_msgs-msg:loop_iteration instead.")
  (loop_iteration m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationStatus>)))
    "Constants for message type '<NavigationStatus>"
  '((:UNKNOWN . 0)
    (:NAVIGATION . 1)
    (:RALLY_POINT . 2)
    (:RECORDER . 3)
    (:START_ITERATION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationStatus)))
    "Constants for message type 'NavigationStatus"
  '((:UNKNOWN . 0)
    (:NAVIGATION . 1)
    (:RALLY_POINT . 2)
    (:RECORDER . 3)
    (:START_ITERATION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatus>) ostream)
  "Serializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_waypoint_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'paused) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loop_iteration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loop_iteration)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatus>) istream)
  "Deserializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_waypoint_id) istream)
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'paused) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'loop_iteration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'loop_iteration)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatus>)))
  "Returns string type for a message object of type '<NavigationStatus>"
  "agv_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatus)))
  "Returns string type for a message object of type 'NavigationStatus"
  "agv_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatus>)))
  "Returns md5sum for a message object of type '<NavigationStatus>"
  "a149a87a3a79c58017a11d4e6e8cb71c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatus)))
  "Returns md5sum for a message object of type 'NavigationStatus"
  "a149a87a3a79c58017a11d4e6e8cb71c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatus>)))
  "Returns full string definition for message of type '<NavigationStatus>"
  (cl:format cl:nil "Header header~%agv_msgs/ID path_id~%agv_msgs/ID current_waypoint_id~%bool active~%bool paused~%~%uint8 mode~%uint8 UNKNOWN = 0~%uint8 NAVIGATION = 1~%uint8 RALLY_POINT = 2~%uint8 RECORDER = 3~%~%agv_msgs/NavigationConfig config~%uint16 loop_iteration~%uint8 START_ITERATION = 1~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatus)))
  "Returns full string definition for message of type 'NavigationStatus"
  (cl:format cl:nil "Header header~%agv_msgs/ID path_id~%agv_msgs/ID current_waypoint_id~%bool active~%bool paused~%~%uint8 mode~%uint8 UNKNOWN = 0~%uint8 NAVIGATION = 1~%uint8 RALLY_POINT = 2~%uint8 RECORDER = 3~%~%agv_msgs/NavigationConfig config~%uint16 loop_iteration~%uint8 START_ITERATION = 1~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_waypoint_id))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatus
    (cl:cons ':header (header msg))
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':current_waypoint_id (current_waypoint_id msg))
    (cl:cons ':active (active msg))
    (cl:cons ':paused (paused msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':config (config msg))
    (cl:cons ':loop_iteration (loop_iteration msg))
))
