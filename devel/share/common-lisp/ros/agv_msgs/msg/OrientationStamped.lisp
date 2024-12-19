; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude OrientationStamped.msg.html

(cl:defclass <OrientationStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (rpy
    :reader rpy
    :initarg :rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass OrientationStamped (<OrientationStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrientationStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrientationStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<OrientationStamped> is deprecated: use agv_msgs-msg:OrientationStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OrientationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <OrientationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:quaternion-val is deprecated.  Use agv_msgs-msg:quaternion instead.")
  (quaternion m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <OrientationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:rpy-val is deprecated.  Use agv_msgs-msg:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrientationStamped>) ostream)
  "Serializes a message object of type '<OrientationStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrientationStamped>) istream)
  "Deserializes a message object of type '<OrientationStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrientationStamped>)))
  "Returns string type for a message object of type '<OrientationStamped>"
  "agv_msgs/OrientationStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientationStamped)))
  "Returns string type for a message object of type 'OrientationStamped"
  "agv_msgs/OrientationStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrientationStamped>)))
  "Returns md5sum for a message object of type '<OrientationStamped>"
  "e7e2d5562f8199f6889d03f38b188837")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrientationStamped)))
  "Returns md5sum for a message object of type 'OrientationStamped"
  "e7e2d5562f8199f6889d03f38b188837")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrientationStamped>)))
  "Returns full string definition for message of type '<OrientationStamped>"
  (cl:format cl:nil "Header                    header~%geometry_msgs/Quaternion  quaternion ~%geometry_msgs/Vector3     rpy~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrientationStamped)))
  "Returns full string definition for message of type 'OrientationStamped"
  (cl:format cl:nil "Header                    header~%geometry_msgs/Quaternion  quaternion ~%geometry_msgs/Vector3     rpy~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrientationStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrientationStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'OrientationStamped
    (cl:cons ':header (header msg))
    (cl:cons ':quaternion (quaternion msg))
    (cl:cons ':rpy (rpy msg))
))
