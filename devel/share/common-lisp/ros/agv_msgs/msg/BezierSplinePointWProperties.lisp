; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude BezierSplinePointWProperties.msg.html

(cl:defclass <BezierSplinePointWProperties> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (coord
    :reader coord
    :initarg :coord
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (cp0
    :reader cp0
    :initarg :cp0
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (cp1
    :reader cp1
    :initarg :cp1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (drive_param
    :reader drive_param
    :initarg :drive_param
    :type (cl:vector agv_msgs-msg:SplineDriveParam)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:SplineDriveParam :initial-element (cl:make-instance 'agv_msgs-msg:SplineDriveParam))))
)

(cl:defclass BezierSplinePointWProperties (<BezierSplinePointWProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BezierSplinePointWProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BezierSplinePointWProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<BezierSplinePointWProperties> is deprecated: use agv_msgs-msg:BezierSplinePointWProperties instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BezierSplinePointWProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'coord-val :lambda-list '(m))
(cl:defmethod coord-val ((m <BezierSplinePointWProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:coord-val is deprecated.  Use agv_msgs-msg:coord instead.")
  (coord m))

(cl:ensure-generic-function 'cp0-val :lambda-list '(m))
(cl:defmethod cp0-val ((m <BezierSplinePointWProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:cp0-val is deprecated.  Use agv_msgs-msg:cp0 instead.")
  (cp0 m))

(cl:ensure-generic-function 'cp1-val :lambda-list '(m))
(cl:defmethod cp1-val ((m <BezierSplinePointWProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:cp1-val is deprecated.  Use agv_msgs-msg:cp1 instead.")
  (cp1 m))

(cl:ensure-generic-function 'drive_param-val :lambda-list '(m))
(cl:defmethod drive_param-val ((m <BezierSplinePointWProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:drive_param-val is deprecated.  Use agv_msgs-msg:drive_param instead.")
  (drive_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BezierSplinePointWProperties>) ostream)
  "Serializes a message object of type '<BezierSplinePointWProperties>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coord) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cp0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cp1) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drive_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'drive_param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BezierSplinePointWProperties>) istream)
  "Deserializes a message object of type '<BezierSplinePointWProperties>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coord) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cp0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cp1) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drive_param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drive_param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:SplineDriveParam))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BezierSplinePointWProperties>)))
  "Returns string type for a message object of type '<BezierSplinePointWProperties>"
  "agv_msgs/BezierSplinePointWProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BezierSplinePointWProperties)))
  "Returns string type for a message object of type 'BezierSplinePointWProperties"
  "agv_msgs/BezierSplinePointWProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BezierSplinePointWProperties>)))
  "Returns md5sum for a message object of type '<BezierSplinePointWProperties>"
  "0cdbfbe79a6088558695ff1f7bb13843")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BezierSplinePointWProperties)))
  "Returns md5sum for a message object of type 'BezierSplinePointWProperties"
  "0cdbfbe79a6088558695ff1f7bb13843")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BezierSplinePointWProperties>)))
  "Returns full string definition for message of type '<BezierSplinePointWProperties>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BezierSplinePointWProperties)))
  "Returns full string definition for message of type 'BezierSplinePointWProperties"
  (cl:format cl:nil "Header header~%geometry_msgs/Point coord~%geometry_msgs/Point cp0~%geometry_msgs/Point cp1~%agv_msgs/SplineDriveParam[] drive_param~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: agv_msgs/SplineDriveParam~%float64 position_offset~%float64 desired_v~%float64 max_a~%float64 incline_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BezierSplinePointWProperties>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coord))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cp0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cp1))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drive_param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BezierSplinePointWProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'BezierSplinePointWProperties
    (cl:cons ':header (header msg))
    (cl:cons ':coord (coord msg))
    (cl:cons ':cp0 (cp0 msg))
    (cl:cons ':cp1 (cp1 msg))
    (cl:cons ':drive_param (drive_param msg))
))
