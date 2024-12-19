; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude BehaviorInfo.msg.html

(cl:defclass <BehaviorInfo> (roslisp-msg-protocol:ros-message)
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
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BehaviorInfo (<BehaviorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<BehaviorInfo> is deprecated: use agv_msgs-msg:BehaviorInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BehaviorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <BehaviorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <BehaviorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:priority-val is deprecated.  Use agv_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <BehaviorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:enabled-val is deprecated.  Use agv_msgs-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorInfo>) ostream)
  "Serializes a message object of type '<BehaviorInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorInfo>) istream)
  "Deserializes a message object of type '<BehaviorInfo>"
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
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorInfo>)))
  "Returns string type for a message object of type '<BehaviorInfo>"
  "agv_msgs/BehaviorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorInfo)))
  "Returns string type for a message object of type 'BehaviorInfo"
  "agv_msgs/BehaviorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorInfo>)))
  "Returns md5sum for a message object of type '<BehaviorInfo>"
  "e8711bc09b068bdf072c07edaec200c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorInfo)))
  "Returns md5sum for a message object of type 'BehaviorInfo"
  "e8711bc09b068bdf072c07edaec200c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorInfo>)))
  "Returns full string definition for message of type '<BehaviorInfo>"
  (cl:format cl:nil "agv_msgs/ID id~%string name~%uint16 priority~%bool enabled~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorInfo)))
  "Returns full string definition for message of type 'BehaviorInfo"
  (cl:format cl:nil "agv_msgs/ID id~%string name~%uint16 priority~%bool enabled~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorInfo
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':enabled (enabled msg))
))
