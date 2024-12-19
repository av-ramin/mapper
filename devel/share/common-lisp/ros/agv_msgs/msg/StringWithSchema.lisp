; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude StringWithSchema.msg.html

(cl:defclass <StringWithSchema> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (schema
    :reader schema
    :initarg :schema
    :type cl:string
    :initform "")
   (format
    :reader format
    :initarg :format
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StringWithSchema (<StringWithSchema>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringWithSchema>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringWithSchema)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<StringWithSchema> is deprecated: use agv_msgs-msg:StringWithSchema instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <StringWithSchema>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:data-val is deprecated.  Use agv_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'schema-val :lambda-list '(m))
(cl:defmethod schema-val ((m <StringWithSchema>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:schema-val is deprecated.  Use agv_msgs-msg:schema instead.")
  (schema m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <StringWithSchema>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:format-val is deprecated.  Use agv_msgs-msg:format instead.")
  (format m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StringWithSchema>)))
    "Constants for message type '<StringWithSchema>"
  '((:JSON . 1)
    (:CSV . 2)
    (:XML . 3)
    (:YAML . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StringWithSchema)))
    "Constants for message type 'StringWithSchema"
  '((:JSON . 1)
    (:CSV . 2)
    (:XML . 3)
    (:YAML . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringWithSchema>) ostream)
  "Serializes a message object of type '<StringWithSchema>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'schema))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'schema))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'format)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringWithSchema>) istream)
  "Deserializes a message object of type '<StringWithSchema>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'schema) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'schema) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'format)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringWithSchema>)))
  "Returns string type for a message object of type '<StringWithSchema>"
  "agv_msgs/StringWithSchema")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringWithSchema)))
  "Returns string type for a message object of type 'StringWithSchema"
  "agv_msgs/StringWithSchema")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringWithSchema>)))
  "Returns md5sum for a message object of type '<StringWithSchema>"
  "f675b16631313e8f7598f59aa6b9873b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringWithSchema)))
  "Returns md5sum for a message object of type 'StringWithSchema"
  "f675b16631313e8f7598f59aa6b9873b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringWithSchema>)))
  "Returns full string definition for message of type '<StringWithSchema>"
  (cl:format cl:nil "string data~%string schema~%uint8 format~%uint8 JSON=1~%uint8 CSV=2~%uint8 XML=3~%uint8 YAML=4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringWithSchema)))
  "Returns full string definition for message of type 'StringWithSchema"
  (cl:format cl:nil "string data~%string schema~%uint8 format~%uint8 JSON=1~%uint8 CSV=2~%uint8 XML=3~%uint8 YAML=4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringWithSchema>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'schema))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringWithSchema>))
  "Converts a ROS message object to a list"
  (cl:list 'StringWithSchema
    (cl:cons ':data (data msg))
    (cl:cons ':schema (schema msg))
    (cl:cons ':format (format msg))
))
