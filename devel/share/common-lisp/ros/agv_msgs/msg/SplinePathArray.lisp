; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SplinePathArray.msg.html

(cl:defclass <SplinePathArray> (roslisp-msg-protocol:ros-message)
  ((smooth_paths
    :reader smooth_paths
    :initarg :smooth_paths
    :type (cl:vector agv_msgs-msg:SplinePath)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:SplinePath :initial-element (cl:make-instance 'agv_msgs-msg:SplinePath))))
)

(cl:defclass SplinePathArray (<SplinePathArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplinePathArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplinePathArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SplinePathArray> is deprecated: use agv_msgs-msg:SplinePathArray instead.")))

(cl:ensure-generic-function 'smooth_paths-val :lambda-list '(m))
(cl:defmethod smooth_paths-val ((m <SplinePathArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:smooth_paths-val is deprecated.  Use agv_msgs-msg:smooth_paths instead.")
  (smooth_paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplinePathArray>) ostream)
  "Serializes a message object of type '<SplinePathArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'smooth_paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'smooth_paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplinePathArray>) istream)
  "Deserializes a message object of type '<SplinePathArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'smooth_paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'smooth_paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:SplinePath))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplinePathArray>)))
  "Returns string type for a message object of type '<SplinePathArray>"
  "agv_msgs/SplinePathArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplinePathArray)))
  "Returns string type for a message object of type 'SplinePathArray"
  "agv_msgs/SplinePathArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplinePathArray>)))
  "Returns md5sum for a message object of type '<SplinePathArray>"
  "05cf4559b25a14e1afdea5a89a416603")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplinePathArray)))
  "Returns md5sum for a message object of type 'SplinePathArray"
  "05cf4559b25a14e1afdea5a89a416603")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplinePathArray>)))
  "Returns full string definition for message of type '<SplinePathArray>"
  (cl:format cl:nil "agv_msgs/SplinePath[] smooth_paths~%================================================================================~%MSG: agv_msgs/SplinePath~%Header header~%agv_msgs/BezierSplinePointWProperties[] path~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/BezierSplinePointWProperties~%Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplinePathArray)))
  "Returns full string definition for message of type 'SplinePathArray"
  (cl:format cl:nil "agv_msgs/SplinePath[] smooth_paths~%================================================================================~%MSG: agv_msgs/SplinePath~%Header header~%agv_msgs/BezierSplinePointWProperties[] path~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/BezierSplinePointWProperties~%Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplinePathArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'smooth_paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplinePathArray>))
  "Converts a ROS message object to a list"
  (cl:list 'SplinePathArray
    (cl:cons ':smooth_paths (smooth_paths msg))
))
