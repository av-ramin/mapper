; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavPath.msg.html

(cl:defclass <NavPath> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector agv_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:Waypoint :initial-element (cl:make-instance 'agv_msgs-msg:Waypoint)))
   (info
    :reader info
    :initarg :info
    :type agv_msgs-msg:NavPathInfo
    :initform (cl:make-instance 'agv_msgs-msg:NavPathInfo)))
)

(cl:defclass NavPath (<NavPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavPath> is deprecated: use agv_msgs-msg:NavPath instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:waypoints-val is deprecated.  Use agv_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <NavPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:info-val is deprecated.  Use agv_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPath>) ostream)
  "Serializes a message object of type '<NavPath>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPath>) istream)
  "Deserializes a message object of type '<NavPath>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPath>)))
  "Returns string type for a message object of type '<NavPath>"
  "agv_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPath)))
  "Returns string type for a message object of type 'NavPath"
  "agv_msgs/NavPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPath>)))
  "Returns md5sum for a message object of type '<NavPath>"
  "6ab59b8885703109fbcdb3fa77299580")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPath)))
  "Returns md5sum for a message object of type 'NavPath"
  "6ab59b8885703109fbcdb3fa77299580")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPath>)))
  "Returns full string definition for message of type '<NavPath>"
  (cl:format cl:nil "agv_msgs/Waypoint[] waypoints~%agv_msgs/NavPathInfo info~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavPathInfo~%agv_msgs/ID id~%time creation_time~%~%uint8 type~%uint8 UNKNOWN=0~%uint8 MANUAL=1~%uint8 RECORDED=2~%uint8 IMPORTED=3~%~%uint8 uncertainty~%uint8 OK=0~%uint8 UNCERTAIN=1~%~%string name~%std_msgs/ColorRGBA color~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPath)))
  "Returns full string definition for message of type 'NavPath"
  (cl:format cl:nil "agv_msgs/Waypoint[] waypoints~%agv_msgs/NavPathInfo info~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavPathInfo~%agv_msgs/ID id~%time creation_time~%~%uint8 type~%uint8 UNKNOWN=0~%uint8 MANUAL=1~%uint8 RECORDED=2~%uint8 IMPORTED=3~%~%uint8 uncertainty~%uint8 OK=0~%uint8 UNCERTAIN=1~%~%string name~%std_msgs/ColorRGBA color~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPath>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPath>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPath
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':info (info msg))
))
