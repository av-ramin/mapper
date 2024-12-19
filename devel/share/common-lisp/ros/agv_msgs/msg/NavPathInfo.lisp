; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavPathInfo.msg.html

(cl:defclass <NavPathInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (creation_time
    :reader creation_time
    :initarg :creation_time
    :type cl:real
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (uncertainty
    :reader uncertainty
    :initarg :uncertainty
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass NavPathInfo (<NavPathInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavPathInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavPathInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavPathInfo> is deprecated: use agv_msgs-msg:NavPathInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'creation_time-val :lambda-list '(m))
(cl:defmethod creation_time-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:creation_time-val is deprecated.  Use agv_msgs-msg:creation_time instead.")
  (creation_time m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:type-val is deprecated.  Use agv_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'uncertainty-val :lambda-list '(m))
(cl:defmethod uncertainty-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:uncertainty-val is deprecated.  Use agv_msgs-msg:uncertainty instead.")
  (uncertainty m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <NavPathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:color-val is deprecated.  Use agv_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavPathInfo>)))
    "Constants for message type '<NavPathInfo>"
  '((:UNKNOWN . 0)
    (:MANUAL . 1)
    (:RECORDED . 2)
    (:IMPORTED . 3)
    (:OK . 0)
    (:UNCERTAIN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavPathInfo)))
    "Constants for message type 'NavPathInfo"
  '((:UNKNOWN . 0)
    (:MANUAL . 1)
    (:RECORDED . 2)
    (:IMPORTED . 3)
    (:OK . 0)
    (:UNCERTAIN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavPathInfo>) ostream)
  "Serializes a message object of type '<NavPathInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uncertainty)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavPathInfo>) istream)
  "Deserializes a message object of type '<NavPathInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uncertainty)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavPathInfo>)))
  "Returns string type for a message object of type '<NavPathInfo>"
  "agv_msgs/NavPathInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavPathInfo)))
  "Returns string type for a message object of type 'NavPathInfo"
  "agv_msgs/NavPathInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavPathInfo>)))
  "Returns md5sum for a message object of type '<NavPathInfo>"
  "15f56a45b039a39725c3469a1fbf2667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavPathInfo)))
  "Returns md5sum for a message object of type 'NavPathInfo"
  "15f56a45b039a39725c3469a1fbf2667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavPathInfo>)))
  "Returns full string definition for message of type '<NavPathInfo>"
  (cl:format cl:nil "agv_msgs/ID id~%time creation_time~%~%uint8 type~%uint8 UNKNOWN=0~%uint8 MANUAL=1~%uint8 RECORDED=2~%uint8 IMPORTED=3~%~%uint8 uncertainty~%uint8 OK=0~%uint8 UNCERTAIN=1~%~%string name~%std_msgs/ColorRGBA color~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavPathInfo)))
  "Returns full string definition for message of type 'NavPathInfo"
  (cl:format cl:nil "agv_msgs/ID id~%time creation_time~%~%uint8 type~%uint8 UNKNOWN=0~%uint8 MANUAL=1~%uint8 RECORDED=2~%uint8 IMPORTED=3~%~%uint8 uncertainty~%uint8 OK=0~%uint8 UNCERTAIN=1~%~%string name~%std_msgs/ColorRGBA color~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavPathInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavPathInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NavPathInfo
    (cl:cons ':id (id msg))
    (cl:cons ':creation_time (creation_time msg))
    (cl:cons ':type (type msg))
    (cl:cons ':uncertainty (uncertainty msg))
    (cl:cons ':name (name msg))
    (cl:cons ':color (color msg))
))
