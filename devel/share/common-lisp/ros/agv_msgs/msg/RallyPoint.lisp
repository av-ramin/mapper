; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude RallyPoint.msg.html

(cl:defclass <RallyPoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type agv_msgs-msg:Waypoint
    :initform (cl:make-instance 'agv_msgs-msg:Waypoint))
   (id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (creation_time
    :reader creation_time
    :initarg :creation_time
    :type cl:real
    :initform 0))
)

(cl:defclass RallyPoint (<RallyPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RallyPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RallyPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<RallyPoint> is deprecated: use agv_msgs-msg:RallyPoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:point-val is deprecated.  Use agv_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:priority-val is deprecated.  Use agv_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radius-val is deprecated.  Use agv_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'creation_time-val :lambda-list '(m))
(cl:defmethod creation_time-val ((m <RallyPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:creation_time-val is deprecated.  Use agv_msgs-msg:creation_time instead.")
  (creation_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RallyPoint>) ostream)
  "Serializes a message object of type '<RallyPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'creation_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'creation_time) (cl:floor (cl:slot-value msg 'creation_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RallyPoint>) istream)
  "Deserializes a message object of type '<RallyPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'creation_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RallyPoint>)))
  "Returns string type for a message object of type '<RallyPoint>"
  "agv_msgs/RallyPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RallyPoint)))
  "Returns string type for a message object of type 'RallyPoint"
  "agv_msgs/RallyPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RallyPoint>)))
  "Returns md5sum for a message object of type '<RallyPoint>"
  "35d2c36ca4d854de8711816e6db62eaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RallyPoint)))
  "Returns md5sum for a message object of type 'RallyPoint"
  "35d2c36ca4d854de8711816e6db62eaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RallyPoint>)))
  "Returns full string definition for message of type '<RallyPoint>"
  (cl:format cl:nil "agv_msgs/Waypoint point~%agv_msgs/ID id~%string name~%uint16 priority~%float32 radius~%time creation_time~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RallyPoint)))
  "Returns full string definition for message of type 'RallyPoint"
  (cl:format cl:nil "agv_msgs/Waypoint point~%agv_msgs/ID id~%string name~%uint16 priority~%float32 radius~%time creation_time~%================================================================================~%MSG: agv_msgs/Waypoint~%Header header~%agv_msgs/NavPose pose~%agv_msgs/WaypointStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/NavPose~%float64 x~%float64 y~%float64 z~%float64 theta~%~%uint8 type~%uint8 UNKNOWN=0~%~%================================================================================~%MSG: agv_msgs/WaypointStatus~%agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RallyPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     2
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RallyPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'RallyPoint
    (cl:cons ':point (point msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':creation_time (creation_time msg))
))
