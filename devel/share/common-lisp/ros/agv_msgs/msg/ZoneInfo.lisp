; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ZoneInfo.msg.html

(cl:defclass <ZoneInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector agv_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:KeyValue :initial-element (cl:make-instance 'agv_msgs-msg:KeyValue)))
   (visible
    :reader visible
    :initarg :visible
    :type cl:boolean
    :initform cl:nil)
   (creation_time
    :reader creation_time
    :initarg :creation_time
    :type cl:real
    :initform 0))
)

(cl:defclass ZoneInfo (<ZoneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZoneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZoneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ZoneInfo> is deprecated: use agv_msgs-msg:ZoneInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:group-val is deprecated.  Use agv_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:color-val is deprecated.  Use agv_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:properties-val is deprecated.  Use agv_msgs-msg:properties instead.")
  (properties m))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:visible-val is deprecated.  Use agv_msgs-msg:visible instead.")
  (visible m))

(cl:ensure-generic-function 'creation_time-val :lambda-list '(m))
(cl:defmethod creation_time-val ((m <ZoneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:creation_time-val is deprecated.  Use agv_msgs-msg:creation_time instead.")
  (creation_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZoneInfo>) ostream)
  "Serializes a message object of type '<ZoneInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visible) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZoneInfo>) istream)
  "Deserializes a message object of type '<ZoneInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'visible) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZoneInfo>)))
  "Returns string type for a message object of type '<ZoneInfo>"
  "agv_msgs/ZoneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZoneInfo)))
  "Returns string type for a message object of type 'ZoneInfo"
  "agv_msgs/ZoneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZoneInfo>)))
  "Returns md5sum for a message object of type '<ZoneInfo>"
  "23fe4a88c361ecd57494678a1faa3171")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZoneInfo)))
  "Returns md5sum for a message object of type 'ZoneInfo"
  "23fe4a88c361ecd57494678a1faa3171")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZoneInfo>)))
  "Returns full string definition for message of type '<ZoneInfo>"
  (cl:format cl:nil "agv_msgs/ID id~%string group~%string name~%std_msgs/ColorRGBA color~%agv_msgs/KeyValue[] properties~%bool visible~%time creation_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZoneInfo)))
  "Returns full string definition for message of type 'ZoneInfo"
  (cl:format cl:nil "agv_msgs/ID id~%string group~%string name~%std_msgs/ColorRGBA color~%agv_msgs/KeyValue[] properties~%bool visible~%time creation_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZoneInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZoneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ZoneInfo
    (cl:cons ':id (id msg))
    (cl:cons ':group (group msg))
    (cl:cons ':name (name msg))
    (cl:cons ':color (color msg))
    (cl:cons ':properties (properties msg))
    (cl:cons ':visible (visible msg))
    (cl:cons ':creation_time (creation_time msg))
))
