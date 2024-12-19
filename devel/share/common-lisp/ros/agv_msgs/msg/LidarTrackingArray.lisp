; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude LidarTrackingArray.msg.html

(cl:defclass <LidarTrackingArray> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type std_msgs-msg:Int64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int64MultiArray))
   (bboxes
    :reader bboxes
    :initarg :bboxes
    :type jsk_recognition_msgs-msg:BoundingBoxArray
    :initform (cl:make-instance 'jsk_recognition_msgs-msg:BoundingBoxArray)))
)

(cl:defclass LidarTrackingArray (<LidarTrackingArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarTrackingArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarTrackingArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<LidarTrackingArray> is deprecated: use agv_msgs-msg:LidarTrackingArray instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <LidarTrackingArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ids-val is deprecated.  Use agv_msgs-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'bboxes-val :lambda-list '(m))
(cl:defmethod bboxes-val ((m <LidarTrackingArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:bboxes-val is deprecated.  Use agv_msgs-msg:bboxes instead.")
  (bboxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarTrackingArray>) ostream)
  "Serializes a message object of type '<LidarTrackingArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ids) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bboxes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarTrackingArray>) istream)
  "Deserializes a message object of type '<LidarTrackingArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ids) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bboxes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarTrackingArray>)))
  "Returns string type for a message object of type '<LidarTrackingArray>"
  "agv_msgs/LidarTrackingArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarTrackingArray)))
  "Returns string type for a message object of type 'LidarTrackingArray"
  "agv_msgs/LidarTrackingArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarTrackingArray>)))
  "Returns md5sum for a message object of type '<LidarTrackingArray>"
  "941673c615d47028c6cf33c8aedc0d50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarTrackingArray)))
  "Returns md5sum for a message object of type 'LidarTrackingArray"
  "941673c615d47028c6cf33c8aedc0d50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarTrackingArray>)))
  "Returns full string definition for message of type '<LidarTrackingArray>"
  (cl:format cl:nil "std_msgs/Int64MultiArray ids~%jsk_recognition_msgs/BoundingBoxArray bboxes~%================================================================================~%MSG: std_msgs/Int64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int64[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: jsk_recognition_msgs/BoundingBoxArray~%# BoundingBoxArray is a list of BoundingBox.~%# You can use jsk_rviz_plugins to visualize BoungingBoxArray on rviz.~%Header header~%BoundingBox[] boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: jsk_recognition_msgs/BoundingBox~%# BoundingBox represents a oriented bounding box.~%Header header~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)~%# You can use this field to hold value such as likelihood~%float32 value~%uint32 label~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarTrackingArray)))
  "Returns full string definition for message of type 'LidarTrackingArray"
  (cl:format cl:nil "std_msgs/Int64MultiArray ids~%jsk_recognition_msgs/BoundingBoxArray bboxes~%================================================================================~%MSG: std_msgs/Int64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int64[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: jsk_recognition_msgs/BoundingBoxArray~%# BoundingBoxArray is a list of BoundingBox.~%# You can use jsk_rviz_plugins to visualize BoungingBoxArray on rviz.~%Header header~%BoundingBox[] boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: jsk_recognition_msgs/BoundingBox~%# BoundingBox represents a oriented bounding box.~%Header header~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)~%# You can use this field to hold value such as likelihood~%float32 value~%uint32 label~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarTrackingArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ids))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bboxes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarTrackingArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarTrackingArray
    (cl:cons ':ids (ids msg))
    (cl:cons ':bboxes (bboxes msg))
))
