; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude PlaneCoefs.msg.html

(cl:defclass <PlaneCoefs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (plane
    :reader plane
    :initarg :plane
    :type shape_msgs-msg:Plane
    :initform (cl:make-instance 'shape_msgs-msg:Plane)))
)

(cl:defclass PlaneCoefs (<PlaneCoefs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneCoefs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneCoefs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<PlaneCoefs> is deprecated: use agv_msgs-msg:PlaneCoefs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlaneCoefs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'plane-val :lambda-list '(m))
(cl:defmethod plane-val ((m <PlaneCoefs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:plane-val is deprecated.  Use agv_msgs-msg:plane instead.")
  (plane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneCoefs>) ostream)
  "Serializes a message object of type '<PlaneCoefs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plane) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneCoefs>) istream)
  "Deserializes a message object of type '<PlaneCoefs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plane) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneCoefs>)))
  "Returns string type for a message object of type '<PlaneCoefs>"
  "agv_msgs/PlaneCoefs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneCoefs)))
  "Returns string type for a message object of type 'PlaneCoefs"
  "agv_msgs/PlaneCoefs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneCoefs>)))
  "Returns md5sum for a message object of type '<PlaneCoefs>"
  "3c3e20d1e0ce2c692b0df82d8f7c0a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneCoefs)))
  "Returns md5sum for a message object of type 'PlaneCoefs"
  "3c3e20d1e0ce2c692b0df82d8f7c0a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneCoefs>)))
  "Returns full string definition for message of type '<PlaneCoefs>"
  (cl:format cl:nil "Header header~%shape_msgs/Plane plane~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneCoefs)))
  "Returns full string definition for message of type 'PlaneCoefs"
  (cl:format cl:nil "Header header~%shape_msgs/Plane plane~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shape_msgs/Plane~%# Representation of a plane, using the plane equation ax + by + cz + d = 0~%~%# a := coef[0]~%# b := coef[1]~%# c := coef[2]~%# d := coef[3]~%~%float64[4] coef~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneCoefs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plane))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneCoefs>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneCoefs
    (cl:cons ':header (header msg))
    (cl:cons ':plane (plane msg))
))
