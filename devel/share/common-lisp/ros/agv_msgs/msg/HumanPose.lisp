; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude HumanPose.msg.html

(cl:defclass <HumanPose> (roslisp-msg-protocol:ros-message)
  ((pose_points
    :reader pose_points
    :initarg :pose_points
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D)))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass HumanPose (<HumanPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<HumanPose> is deprecated: use agv_msgs-msg:HumanPose instead.")))

(cl:ensure-generic-function 'pose_points-val :lambda-list '(m))
(cl:defmethod pose_points-val ((m <HumanPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pose_points-val is deprecated.  Use agv_msgs-msg:pose_points instead.")
  (pose_points m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <HumanPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:score-val is deprecated.  Use agv_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanPose>) ostream)
  "Serializes a message object of type '<HumanPose>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_points))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanPose>) istream)
  "Deserializes a message object of type '<HumanPose>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanPose>)))
  "Returns string type for a message object of type '<HumanPose>"
  "agv_msgs/HumanPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanPose)))
  "Returns string type for a message object of type 'HumanPose"
  "agv_msgs/HumanPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanPose>)))
  "Returns md5sum for a message object of type '<HumanPose>"
  "e855ff1260c66856127e8a75c6ef452d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanPose)))
  "Returns md5sum for a message object of type 'HumanPose"
  "e855ff1260c66856127e8a75c6ef452d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanPose>)))
  "Returns full string definition for message of type '<HumanPose>"
  (cl:format cl:nil "geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanPose)))
  "Returns full string definition for message of type 'HumanPose"
  (cl:format cl:nil "geometry_msgs/Pose2D[] pose_points~%float64 score~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanPose>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanPose>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanPose
    (cl:cons ':pose_points (pose_points msg))
    (cl:cons ':score (score msg))
))
