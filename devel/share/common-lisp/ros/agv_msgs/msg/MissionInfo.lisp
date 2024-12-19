; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude MissionInfo.msg.html

(cl:defclass <MissionInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (creation_time
    :reader creation_time
    :initarg :creation_time
    :type cl:real
    :initform 0)
   (modification_time
    :reader modification_time
    :initarg :modification_time
    :type cl:real
    :initform 0))
)

(cl:defclass MissionInfo (<MissionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<MissionInfo> is deprecated: use agv_msgs-msg:MissionInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:description-val is deprecated.  Use agv_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:group-val is deprecated.  Use agv_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'creation_time-val :lambda-list '(m))
(cl:defmethod creation_time-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:creation_time-val is deprecated.  Use agv_msgs-msg:creation_time instead.")
  (creation_time m))

(cl:ensure-generic-function 'modification_time-val :lambda-list '(m))
(cl:defmethod modification_time-val ((m <MissionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:modification_time-val is deprecated.  Use agv_msgs-msg:modification_time instead.")
  (modification_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionInfo>) ostream)
  "Serializes a message object of type '<MissionInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
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
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'modification_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'modification_time) (cl:floor (cl:slot-value msg 'modification_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionInfo>) istream)
  "Deserializes a message object of type '<MissionInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modification_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionInfo>)))
  "Returns string type for a message object of type '<MissionInfo>"
  "agv_msgs/MissionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionInfo)))
  "Returns string type for a message object of type 'MissionInfo"
  "agv_msgs/MissionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionInfo>)))
  "Returns md5sum for a message object of type '<MissionInfo>"
  "696912476d004d91dc3f26a1f2e44a40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionInfo)))
  "Returns md5sum for a message object of type 'MissionInfo"
  "696912476d004d91dc3f26a1f2e44a40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionInfo>)))
  "Returns full string definition for message of type '<MissionInfo>"
  (cl:format cl:nil "  agv_msgs/ID id~%  string name~%  string description~%  string group~%  time creation_time~%  time modification_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionInfo)))
  "Returns full string definition for message of type 'MissionInfo"
  (cl:format cl:nil "  agv_msgs/ID id~%  string name~%  string description~%  string group~%  time creation_time~%  time modification_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'group))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionInfo
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':description (description msg))
    (cl:cons ':group (group msg))
    (cl:cons ':creation_time (creation_time msg))
    (cl:cons ':modification_time (modification_time msg))
))
