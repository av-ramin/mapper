; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude MissionInstrumentation.msg.html

(cl:defclass <MissionInstrumentation> (roslisp-msg-protocol:ros-message)
  ((elapsed_time
    :reader elapsed_time
    :initarg :elapsed_time
    :type cl:real
    :initform 0)
   (traversed_distance
    :reader traversed_distance
    :initarg :traversed_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionInstrumentation (<MissionInstrumentation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionInstrumentation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionInstrumentation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<MissionInstrumentation> is deprecated: use agv_msgs-msg:MissionInstrumentation instead.")))

(cl:ensure-generic-function 'elapsed_time-val :lambda-list '(m))
(cl:defmethod elapsed_time-val ((m <MissionInstrumentation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:elapsed_time-val is deprecated.  Use agv_msgs-msg:elapsed_time instead.")
  (elapsed_time m))

(cl:ensure-generic-function 'traversed_distance-val :lambda-list '(m))
(cl:defmethod traversed_distance-val ((m <MissionInstrumentation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:traversed_distance-val is deprecated.  Use agv_msgs-msg:traversed_distance instead.")
  (traversed_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionInstrumentation>) ostream)
  "Serializes a message object of type '<MissionInstrumentation>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'elapsed_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'elapsed_time) (cl:floor (cl:slot-value msg 'elapsed_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'traversed_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionInstrumentation>) istream)
  "Deserializes a message object of type '<MissionInstrumentation>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elapsed_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traversed_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionInstrumentation>)))
  "Returns string type for a message object of type '<MissionInstrumentation>"
  "agv_msgs/MissionInstrumentation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionInstrumentation)))
  "Returns string type for a message object of type 'MissionInstrumentation"
  "agv_msgs/MissionInstrumentation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionInstrumentation>)))
  "Returns md5sum for a message object of type '<MissionInstrumentation>"
  "a0f51d602a0058a2f553df8c1db261b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionInstrumentation)))
  "Returns md5sum for a message object of type 'MissionInstrumentation"
  "a0f51d602a0058a2f553df8c1db261b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionInstrumentation>)))
  "Returns full string definition for message of type '<MissionInstrumentation>"
  (cl:format cl:nil "duration elapsed_time~%float64 traversed_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionInstrumentation)))
  "Returns full string definition for message of type 'MissionInstrumentation"
  (cl:format cl:nil "duration elapsed_time~%float64 traversed_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionInstrumentation>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionInstrumentation>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionInstrumentation
    (cl:cons ':elapsed_time (elapsed_time msg))
    (cl:cons ':traversed_distance (traversed_distance msg))
))
