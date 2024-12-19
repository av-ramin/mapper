; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude WaypointArray.msg.html

(cl:defclass <WaypointArray> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector agv_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:Waypoint :initial-element (cl:make-instance 'agv_msgs-msg:Waypoint))))
)

(cl:defclass WaypointArray (<WaypointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<WaypointArray> is deprecated: use agv_msgs-msg:WaypointArray instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:points-val is deprecated.  Use agv_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointArray>) ostream)
  "Serializes a message object of type '<WaypointArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointArray>) istream)
  "Deserializes a message object of type '<WaypointArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointArray>)))
  "Returns string type for a message object of type '<WaypointArray>"
  "agv_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointArray)))
  "Returns string type for a message object of type 'WaypointArray"
  "agv_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointArray>)))
  "Returns md5sum for a message object of type '<WaypointArray>"
  "b892504f792016845606f79a85c2f15a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointArray)))
  "Returns md5sum for a message object of type 'WaypointArray"
  "b892504f792016845606f79a85c2f15a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointArray>)))
  "Returns full string definition for message of type '<WaypointArray>"
  (cl:format cl:nil "agv_msgs/Waypoint[] points~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointArray)))
  "Returns full string definition for message of type 'WaypointArray"
  (cl:format cl:nil "agv_msgs/Waypoint[] points~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointArray
    (cl:cons ':points (points msg))
))
