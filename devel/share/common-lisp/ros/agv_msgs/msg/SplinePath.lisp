; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SplinePath.msg.html

(cl:defclass <SplinePath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path
    :reader path
    :initarg :path
    :type (cl:vector agv_msgs-msg:BezierSplinePointWProperties)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:BezierSplinePointWProperties :initial-element (cl:make-instance 'agv_msgs-msg:BezierSplinePointWProperties))))
)

(cl:defclass SplinePath (<SplinePath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SplinePath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SplinePath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SplinePath> is deprecated: use agv_msgs-msg:SplinePath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SplinePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <SplinePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:path-val is deprecated.  Use agv_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SplinePath>) ostream)
  "Serializes a message object of type '<SplinePath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SplinePath>) istream)
  "Deserializes a message object of type '<SplinePath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:BezierSplinePointWProperties))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SplinePath>)))
  "Returns string type for a message object of type '<SplinePath>"
  "agv_msgs/SplinePath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SplinePath)))
  "Returns string type for a message object of type 'SplinePath"
  "agv_msgs/SplinePath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SplinePath>)))
  "Returns md5sum for a message object of type '<SplinePath>"
  "80bf4fef0281111824cda232d35d94fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SplinePath)))
  "Returns md5sum for a message object of type 'SplinePath"
  "80bf4fef0281111824cda232d35d94fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SplinePath>)))
  "Returns full string definition for message of type '<SplinePath>"
  (cl:format cl:nil "Header header~%agv_msgs/BezierSplinePointWProperties[] path~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/BezierSplinePointWProperties~%Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SplinePath)))
  "Returns full string definition for message of type 'SplinePath"
  (cl:format cl:nil "Header header~%agv_msgs/BezierSplinePointWProperties[] path~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/BezierSplinePointWProperties~%Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SplinePath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SplinePath>))
  "Converts a ROS message object to a list"
  (cl:list 'SplinePath
    (cl:cons ':header (header msg))
    (cl:cons ':path (path msg))
))
