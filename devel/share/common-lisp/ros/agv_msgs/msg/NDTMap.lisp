; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NDTMap.msg.html

(cl:defclass <NDTMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cloud_bounds_min
    :reader cloud_bounds_min
    :initarg :cloud_bounds_min
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cloud_bounds_max
    :reader cloud_bounds_max
    :initarg :cloud_bounds_max
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (grid_bounds_min
    :reader grid_bounds_min
    :initarg :grid_bounds_min
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (grid_bounds_max
    :reader grid_bounds_max
    :initarg :grid_bounds_max
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (grid_resolution
    :reader grid_resolution
    :initarg :grid_resolution
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector agv_msgs-msg:NDTCell)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:NDTCell :initial-element (cl:make-instance 'agv_msgs-msg:NDTCell))))
)

(cl:defclass NDTMap (<NDTMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NDTMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NDTMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NDTMap> is deprecated: use agv_msgs-msg:NDTMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cloud_bounds_min-val :lambda-list '(m))
(cl:defmethod cloud_bounds_min-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:cloud_bounds_min-val is deprecated.  Use agv_msgs-msg:cloud_bounds_min instead.")
  (cloud_bounds_min m))

(cl:ensure-generic-function 'cloud_bounds_max-val :lambda-list '(m))
(cl:defmethod cloud_bounds_max-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:cloud_bounds_max-val is deprecated.  Use agv_msgs-msg:cloud_bounds_max instead.")
  (cloud_bounds_max m))

(cl:ensure-generic-function 'grid_bounds_min-val :lambda-list '(m))
(cl:defmethod grid_bounds_min-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:grid_bounds_min-val is deprecated.  Use agv_msgs-msg:grid_bounds_min instead.")
  (grid_bounds_min m))

(cl:ensure-generic-function 'grid_bounds_max-val :lambda-list '(m))
(cl:defmethod grid_bounds_max-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:grid_bounds_max-val is deprecated.  Use agv_msgs-msg:grid_bounds_max instead.")
  (grid_bounds_max m))

(cl:ensure-generic-function 'grid_resolution-val :lambda-list '(m))
(cl:defmethod grid_resolution-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:grid_resolution-val is deprecated.  Use agv_msgs-msg:grid_resolution instead.")
  (grid_resolution m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <NDTMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:cells-val is deprecated.  Use agv_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NDTMap>) ostream)
  "Serializes a message object of type '<NDTMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_bounds_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_bounds_max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid_bounds_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid_bounds_max) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid_resolution) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NDTMap>) istream)
  "Deserializes a message object of type '<NDTMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_bounds_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_bounds_max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid_bounds_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid_bounds_max) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid_resolution) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:NDTCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NDTMap>)))
  "Returns string type for a message object of type '<NDTMap>"
  "agv_msgs/NDTMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NDTMap)))
  "Returns string type for a message object of type 'NDTMap"
  "agv_msgs/NDTMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NDTMap>)))
  "Returns md5sum for a message object of type '<NDTMap>"
  "6d146211345303955e78e8c67700a3b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NDTMap)))
  "Returns md5sum for a message object of type 'NDTMap"
  "6d146211345303955e78e8c67700a3b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NDTMap>)))
  "Returns full string definition for message of type '<NDTMap>"
  (cl:format cl:nil "Header                  header~%~%geometry_msgs/Vector3   cloud_bounds_min~%geometry_msgs/Vector3   cloud_bounds_max~%~%geometry_msgs/Vector3   grid_bounds_min~%geometry_msgs/Vector3   grid_bounds_max~%~%geometry_msgs/Vector3   grid_resolution~%~%NDTCell[]               cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: agv_msgs/NDTCell~%geometry_msgs/Point  centroid~%float64[9]           covariance~%uint64               num_points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NDTMap)))
  "Returns full string definition for message of type 'NDTMap"
  (cl:format cl:nil "Header                  header~%~%geometry_msgs/Vector3   cloud_bounds_min~%geometry_msgs/Vector3   cloud_bounds_max~%~%geometry_msgs/Vector3   grid_bounds_min~%geometry_msgs/Vector3   grid_bounds_max~%~%geometry_msgs/Vector3   grid_resolution~%~%NDTCell[]               cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: agv_msgs/NDTCell~%geometry_msgs/Point  centroid~%float64[9]           covariance~%uint64               num_points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NDTMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_bounds_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_bounds_max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid_bounds_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid_bounds_max))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid_resolution))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NDTMap>))
  "Converts a ROS message object to a list"
  (cl:list 'NDTMap
    (cl:cons ':header (header msg))
    (cl:cons ':cloud_bounds_min (cloud_bounds_min msg))
    (cl:cons ':cloud_bounds_max (cloud_bounds_max msg))
    (cl:cons ':grid_bounds_min (grid_bounds_min msg))
    (cl:cons ':grid_bounds_max (grid_bounds_max msg))
    (cl:cons ':grid_resolution (grid_resolution msg))
    (cl:cons ':cells (cells msg))
))
