; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude HumanPoseArray.msg.html

(cl:defclass <HumanPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (humans
    :reader humans
    :initarg :humans
    :type (cl:vector agv_msgs-msg:HumanPose)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:HumanPose :initial-element (cl:make-instance 'agv_msgs-msg:HumanPose))))
)

(cl:defclass HumanPoseArray (<HumanPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<HumanPoseArray> is deprecated: use agv_msgs-msg:HumanPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'humans-val :lambda-list '(m))
(cl:defmethod humans-val ((m <HumanPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:humans-val is deprecated.  Use agv_msgs-msg:humans instead.")
  (humans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanPoseArray>) ostream)
  "Serializes a message object of type '<HumanPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'humans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'humans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanPoseArray>) istream)
  "Deserializes a message object of type '<HumanPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'humans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'humans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:HumanPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanPoseArray>)))
  "Returns string type for a message object of type '<HumanPoseArray>"
  "agv_msgs/HumanPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanPoseArray)))
  "Returns string type for a message object of type 'HumanPoseArray"
  "agv_msgs/HumanPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanPoseArray>)))
  "Returns md5sum for a message object of type '<HumanPoseArray>"
  "e95557dece6aad3ab24d149c6d205a85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanPoseArray)))
  "Returns md5sum for a message object of type 'HumanPoseArray"
  "e95557dece6aad3ab24d149c6d205a85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanPoseArray>)))
  "Returns full string definition for message of type '<HumanPoseArray>"
  (cl:format cl:nil "Header header~%HumanPose[] humans~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/HumanPose~%geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanPoseArray)))
  "Returns full string definition for message of type 'HumanPoseArray"
  (cl:format cl:nil "Header header~%HumanPose[] humans~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/HumanPose~%geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'humans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':humans (humans msg))
))
