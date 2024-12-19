; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ObstacleInfo.msg.html

(cl:defclass <ObstacleInfo> (roslisp-msg-protocol:ros-message)
  ((description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (symbol
    :reader symbol
    :initarg :symbol
    :type cl:fixnum
    :initform 0)
   (layer_id
    :reader layer_id
    :initarg :layer_id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (operation
    :reader operation
    :initarg :operation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObstacleInfo (<ObstacleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ObstacleInfo> is deprecated: use agv_msgs-msg:ObstacleInfo instead.")))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:description-val is deprecated.  Use agv_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'symbol-val :lambda-list '(m))
(cl:defmethod symbol-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:symbol-val is deprecated.  Use agv_msgs-msg:symbol instead.")
  (symbol m))

(cl:ensure-generic-function 'layer_id-val :lambda-list '(m))
(cl:defmethod layer_id-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:layer_id-val is deprecated.  Use agv_msgs-msg:layer_id instead.")
  (layer_id m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:enabled-val is deprecated.  Use agv_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:priority-val is deprecated.  Use agv_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <ObstacleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:operation-val is deprecated.  Use agv_msgs-msg:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObstacleInfo>)))
    "Constants for message type '<ObstacleInfo>"
  '((:REPLACE . 0)
    (:ADD . 1)
    (:SUBTRACT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObstacleInfo)))
    "Constants for message type 'ObstacleInfo"
  '((:REPLACE . 0)
    (:ADD . 1)
    (:SUBTRACT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleInfo>) ostream)
  "Serializes a message object of type '<ObstacleInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'symbol)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'layer_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleInfo>) istream)
  "Deserializes a message object of type '<ObstacleInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'layer_id) istream)
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleInfo>)))
  "Returns string type for a message object of type '<ObstacleInfo>"
  "agv_msgs/ObstacleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleInfo)))
  "Returns string type for a message object of type 'ObstacleInfo"
  "agv_msgs/ObstacleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleInfo>)))
  "Returns md5sum for a message object of type '<ObstacleInfo>"
  "77a1e000112bcc70c977607dda6c239e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleInfo)))
  "Returns md5sum for a message object of type 'ObstacleInfo"
  "77a1e000112bcc70c977607dda6c239e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleInfo>)))
  "Returns full string definition for message of type '<ObstacleInfo>"
  (cl:format cl:nil "string description~%uint16 symbol~%agv_msgs/ID layer_id~%bool enabled~%uint16 priority~%~%uint8 operation~%uint8 REPLACE = 0~%uint8 ADD = 1~%uint8 SUBTRACT = 2~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleInfo)))
  "Returns full string definition for message of type 'ObstacleInfo"
  (cl:format cl:nil "string description~%uint16 symbol~%agv_msgs/ID layer_id~%bool enabled~%uint16 priority~%~%uint8 operation~%uint8 REPLACE = 0~%uint8 ADD = 1~%uint8 SUBTRACT = 2~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'description))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'layer_id))
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleInfo
    (cl:cons ':description (description msg))
    (cl:cons ':symbol (symbol msg))
    (cl:cons ':layer_id (layer_id msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':operation (operation msg))
))
