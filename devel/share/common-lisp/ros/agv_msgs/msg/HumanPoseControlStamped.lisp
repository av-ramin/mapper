; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude HumanPoseControlStamped.msg.html

(cl:defclass <HumanPoseControlStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (classification
    :reader classification
    :initarg :classification
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type agv_msgs-msg:HumanPose
    :initform (cl:make-instance 'agv_msgs-msg:HumanPose)))
)

(cl:defclass HumanPoseControlStamped (<HumanPoseControlStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanPoseControlStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanPoseControlStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<HumanPoseControlStamped> is deprecated: use agv_msgs-msg:HumanPoseControlStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanPoseControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HumanPoseControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:status-val is deprecated.  Use agv_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <HumanPoseControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:classification-val is deprecated.  Use agv_msgs-msg:classification instead.")
  (classification m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <HumanPoseControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pose-val is deprecated.  Use agv_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HumanPoseControlStamped>)))
    "Constants for message type '<HumanPoseControlStamped>"
  '((:POSE_LOCK_IDLE . 0)
    (:POSE_LOCK_START . 1)
    (:POSE_LOCK . 2)
    (:POSE_LEFT . 0)
    (:POSE_RIGHT . 1)
    (:POSE_START . 2)
    (:POSE_REVERSE . 3)
    (:POSE_STOP . 4)
    (:POSE_ELSE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HumanPoseControlStamped)))
    "Constants for message type 'HumanPoseControlStamped"
  '((:POSE_LOCK_IDLE . 0)
    (:POSE_LOCK_START . 1)
    (:POSE_LOCK . 2)
    (:POSE_LEFT . 0)
    (:POSE_RIGHT . 1)
    (:POSE_START . 2)
    (:POSE_REVERSE . 3)
    (:POSE_STOP . 4)
    (:POSE_ELSE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanPoseControlStamped>) ostream)
  "Serializes a message object of type '<HumanPoseControlStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classification)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanPoseControlStamped>) istream)
  "Deserializes a message object of type '<HumanPoseControlStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classification)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanPoseControlStamped>)))
  "Returns string type for a message object of type '<HumanPoseControlStamped>"
  "agv_msgs/HumanPoseControlStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanPoseControlStamped)))
  "Returns string type for a message object of type 'HumanPoseControlStamped"
  "agv_msgs/HumanPoseControlStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanPoseControlStamped>)))
  "Returns md5sum for a message object of type '<HumanPoseControlStamped>"
  "e84d4a1761d7f7291a8bf764334c8d98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanPoseControlStamped)))
  "Returns md5sum for a message object of type 'HumanPoseControlStamped"
  "e84d4a1761d7f7291a8bf764334c8d98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanPoseControlStamped>)))
  "Returns full string definition for message of type '<HumanPoseControlStamped>"
  (cl:format cl:nil "Header header~%~%uint8 status~%uint8 POSE_LOCK_IDLE = 0~%uint8 POSE_LOCK_START = 1~%uint8 POSE_LOCK = 2~%~%uint8 classification~%uint8 POSE_LEFT = 0~%uint8 POSE_RIGHT = 1~%uint8 POSE_START = 2~%uint8 POSE_REVERSE = 3~%uint8 POSE_STOP = 4~%uint8 POSE_ELSE = 5~%~%HumanPose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/HumanPose~%geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanPoseControlStamped)))
  "Returns full string definition for message of type 'HumanPoseControlStamped"
  (cl:format cl:nil "Header header~%~%uint8 status~%uint8 POSE_LOCK_IDLE = 0~%uint8 POSE_LOCK_START = 1~%uint8 POSE_LOCK = 2~%~%uint8 classification~%uint8 POSE_LEFT = 0~%uint8 POSE_RIGHT = 1~%uint8 POSE_START = 2~%uint8 POSE_REVERSE = 3~%uint8 POSE_STOP = 4~%uint8 POSE_ELSE = 5~%~%HumanPose pose~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/HumanPose~%geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanPoseControlStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanPoseControlStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanPoseControlStamped
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':classification (classification msg))
    (cl:cons ':pose (pose msg))
))
