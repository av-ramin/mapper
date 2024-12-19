; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude WaypointWithVariance.msg.html

(cl:defclass <WaypointWithVariance> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type agv_msgs-msg:NavPose
    :initform (cl:make-instance 'agv_msgs-msg:NavPose))
   (variance
    :reader variance
    :initarg :variance
    :type agv_msgs-msg:NavPoseVariance
    :initform (cl:make-instance 'agv_msgs-msg:NavPoseVariance))
   (status
    :reader status
    :initarg :status
    :type agv_msgs-msg:WaypointStatus
    :initform (cl:make-instance 'agv_msgs-msg:WaypointStatus)))
)

(cl:defclass WaypointWithVariance (<WaypointWithVariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointWithVariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointWithVariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<WaypointWithVariance> is deprecated: use agv_msgs-msg:WaypointWithVariance instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointWithVariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <WaypointWithVariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pose-val is deprecated.  Use agv_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'variance-val :lambda-list '(m))
(cl:defmethod variance-val ((m <WaypointWithVariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:variance-val is deprecated.  Use agv_msgs-msg:variance instead.")
  (variance m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WaypointWithVariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:status-val is deprecated.  Use agv_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointWithVariance>) ostream)
  "Serializes a message object of type '<WaypointWithVariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'variance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointWithVariance>) istream)
  "Deserializes a message object of type '<WaypointWithVariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'variance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointWithVariance>)))
  "Returns string type for a message object of type '<WaypointWithVariance>"
  "agv_msgs/WaypointWithVariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointWithVariance)))
  "Returns string type for a message object of type 'WaypointWithVariance"
  "agv_msgs/WaypointWithVariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointWithVariance>)))
  "Returns md5sum for a message object of type '<WaypointWithVariance>"
  "8e55df1b331a1adbeb077f4d24a07d2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointWithVariance)))
  "Returns md5sum for a message object of type 'WaypointWithVariance"
  "8e55df1b331a1adbeb077f4d24a07d2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointWithVariance>)))
  "Returns full string definition for message of type '<WaypointWithVariance>"
  (cl:format cl:nil "Header header~%agv_msgs/NavPose pose~%agv_msgs/NavPoseVariance variance~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/NavPoseVariance~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointWithVariance)))
  "Returns full string definition for message of type 'WaypointWithVariance"
  (cl:format cl:nil "Header header~%agv_msgs/NavPose pose~%agv_msgs/NavPoseVariance variance~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/NavPoseVariance~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointWithVariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'variance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointWithVariance>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointWithVariance
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':variance (variance msg))
    (cl:cons ':status (status msg))
))
