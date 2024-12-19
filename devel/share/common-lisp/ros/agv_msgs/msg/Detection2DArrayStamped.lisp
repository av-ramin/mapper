; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Detection2DArrayStamped.msg.html

(cl:defclass <Detection2DArrayStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector agv_msgs-msg:Detection2D)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:Detection2D :initial-element (cl:make-instance 'agv_msgs-msg:Detection2D))))
)

(cl:defclass Detection2DArrayStamped (<Detection2DArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection2DArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection2DArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Detection2DArrayStamped> is deprecated: use agv_msgs-msg:Detection2DArrayStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Detection2DArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <Detection2DArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:detections-val is deprecated.  Use agv_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection2DArrayStamped>) ostream)
  "Serializes a message object of type '<Detection2DArrayStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection2DArrayStamped>) istream)
  "Deserializes a message object of type '<Detection2DArrayStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:Detection2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection2DArrayStamped>)))
  "Returns string type for a message object of type '<Detection2DArrayStamped>"
  "agv_msgs/Detection2DArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection2DArrayStamped)))
  "Returns string type for a message object of type 'Detection2DArrayStamped"
  "agv_msgs/Detection2DArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection2DArrayStamped>)))
  "Returns md5sum for a message object of type '<Detection2DArrayStamped>"
  "341257920ef9784d3faf9045340a82be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection2DArrayStamped)))
  "Returns md5sum for a message object of type 'Detection2DArrayStamped"
  "341257920ef9784d3faf9045340a82be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection2DArrayStamped>)))
  "Returns full string definition for message of type '<Detection2DArrayStamped>"
  (cl:format cl:nil "Header header~%Detection2D[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/Detection2D~%int32 class_id~%string class_name~%float32 probability~%int32 track_id~%uint32 xmin~%uint32 ymin~%uint32 xmax~%uint32 ymax~%float32 yaw_hor~%float32 yaw_hor_dev~%float32 yaw_ver~%float32 yaw_ver_dev~%float32 dist~%float32 dist_dev~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection2DArrayStamped)))
  "Returns full string definition for message of type 'Detection2DArrayStamped"
  (cl:format cl:nil "Header header~%Detection2D[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/Detection2D~%int32 class_id~%string class_name~%float32 probability~%int32 track_id~%uint32 xmin~%uint32 ymin~%uint32 xmax~%uint32 ymax~%float32 yaw_hor~%float32 yaw_hor_dev~%float32 yaw_ver~%float32 yaw_ver_dev~%float32 dist~%float32 dist_dev~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection2DArrayStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection2DArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection2DArrayStamped
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
