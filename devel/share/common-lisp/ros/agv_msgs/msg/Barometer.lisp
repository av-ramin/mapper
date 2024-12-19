; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Barometer.msg.html

(cl:defclass <Barometer> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (pressure_variance
    :reader pressure_variance
    :initarg :pressure_variance
    :type cl:float
    :initform 0.0)
   (altitude_variance
    :reader altitude_variance
    :initarg :altitude_variance
    :type cl:float
    :initform 0.0)
   (altitude_datum
    :reader altitude_datum
    :initarg :altitude_datum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Barometer (<Barometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Barometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Barometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Barometer> is deprecated: use agv_msgs-msg:Barometer instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pressure-val is deprecated.  Use agv_msgs-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:altitude-val is deprecated.  Use agv_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'pressure_variance-val :lambda-list '(m))
(cl:defmethod pressure_variance-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:pressure_variance-val is deprecated.  Use agv_msgs-msg:pressure_variance instead.")
  (pressure_variance m))

(cl:ensure-generic-function 'altitude_variance-val :lambda-list '(m))
(cl:defmethod altitude_variance-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:altitude_variance-val is deprecated.  Use agv_msgs-msg:altitude_variance instead.")
  (altitude_variance m))

(cl:ensure-generic-function 'altitude_datum-val :lambda-list '(m))
(cl:defmethod altitude_datum-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:altitude_datum-val is deprecated.  Use agv_msgs-msg:altitude_datum instead.")
  (altitude_datum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Barometer>) ostream)
  "Serializes a message object of type '<Barometer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude_datum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude_datum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Barometer>) istream)
  "Deserializes a message object of type '<Barometer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure_variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude_datum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude_datum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Barometer>)))
  "Returns string type for a message object of type '<Barometer>"
  "agv_msgs/Barometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Barometer)))
  "Returns string type for a message object of type 'Barometer"
  "agv_msgs/Barometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Barometer>)))
  "Returns md5sum for a message object of type '<Barometer>"
  "a020ce80c5d250ada5a7e4279fde9898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Barometer)))
  "Returns md5sum for a message object of type 'Barometer"
  "a020ce80c5d250ada5a7e4279fde9898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Barometer>)))
  "Returns full string definition for message of type '<Barometer>"
  (cl:format cl:nil "Header header~%~%float64 pressure # Pa~%float64 altitude~%~%# 0 is interpreted as variance unknown~%float64 pressure_variance~%float64 altitude_variance~%~%# EPSG code of the vertical datum used for altitude, e.g. 4326 for WGS84.~%# Set to 0 when altitude is not referenced against any datum.~%uint16 altitude_datum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Barometer)))
  "Returns full string definition for message of type 'Barometer"
  (cl:format cl:nil "Header header~%~%float64 pressure # Pa~%float64 altitude~%~%# 0 is interpreted as variance unknown~%float64 pressure_variance~%float64 altitude_variance~%~%# EPSG code of the vertical datum used for altitude, e.g. 4326 for WGS84.~%# Set to 0 when altitude is not referenced against any datum.~%uint16 altitude_datum~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Barometer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Barometer>))
  "Converts a ROS message object to a list"
  (cl:list 'Barometer
    (cl:cons ':header (header msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':pressure_variance (pressure_variance msg))
    (cl:cons ':altitude_variance (altitude_variance msg))
    (cl:cons ':altitude_datum (altitude_datum msg))
))
