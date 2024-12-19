; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ZoneShape.msg.html

(cl:defclass <ZoneShape> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ZoneShape (<ZoneShape>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZoneShape>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZoneShape)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ZoneShape> is deprecated: use agv_msgs-msg:ZoneShape instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <ZoneShape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:frame_id-val is deprecated.  Use agv_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <ZoneShape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:points-val is deprecated.  Use agv_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <ZoneShape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radius-val is deprecated.  Use agv_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ZoneShape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:type-val is deprecated.  Use agv_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ZoneShape>)))
    "Constants for message type '<ZoneShape>"
  '((:INVALID . 0)
    (:POLYGON . 1)
    (:RADIUS . 2)
    (:BARRIER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ZoneShape)))
    "Constants for message type 'ZoneShape"
  '((:INVALID . 0)
    (:POLYGON . 1)
    (:RADIUS . 2)
    (:BARRIER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZoneShape>) ostream)
  "Serializes a message object of type '<ZoneShape>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZoneShape>) istream)
  "Deserializes a message object of type '<ZoneShape>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZoneShape>)))
  "Returns string type for a message object of type '<ZoneShape>"
  "agv_msgs/ZoneShape")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZoneShape)))
  "Returns string type for a message object of type 'ZoneShape"
  "agv_msgs/ZoneShape")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZoneShape>)))
  "Returns md5sum for a message object of type '<ZoneShape>"
  "a50b2727b92148a1d88f37b509d9c8f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZoneShape)))
  "Returns md5sum for a message object of type 'ZoneShape"
  "a50b2727b92148a1d88f37b509d9c8f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZoneShape>)))
  "Returns full string definition for message of type '<ZoneShape>"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Point32[] points~%float32 radius~%~%uint8 type~%uint8 INVALID = 0~%uint8 POLYGON = 1~%uint8 RADIUS = 2 ~%uint8 BARRIER = 3  ~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZoneShape)))
  "Returns full string definition for message of type 'ZoneShape"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Point32[] points~%float32 radius~%~%uint8 type~%uint8 INVALID = 0~%uint8 POLYGON = 1~%uint8 RADIUS = 2 ~%uint8 BARRIER = 3  ~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZoneShape>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZoneShape>))
  "Converts a ROS message object to a list"
  (cl:list 'ZoneShape
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':points (points msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':type (type msg))
))
