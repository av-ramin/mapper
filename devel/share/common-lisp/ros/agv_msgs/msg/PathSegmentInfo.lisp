; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude PathSegmentInfo.msg.html

(cl:defclass <PathSegmentInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (type
    :reader type
    :initarg :type
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
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PathSegmentInfo (<PathSegmentInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSegmentInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSegmentInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<PathSegmentInfo> is deprecated: use agv_msgs-msg:PathSegmentInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:type-val is deprecated.  Use agv_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <PathSegmentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:color-val is deprecated.  Use agv_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PathSegmentInfo>)))
    "Constants for message type '<PathSegmentInfo>"
  '((:UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PathSegmentInfo)))
    "Constants for message type 'PathSegmentInfo"
  '((:UNKNOWN . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSegmentInfo>) ostream)
  "Serializes a message object of type '<PathSegmentInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSegmentInfo>) istream)
  "Deserializes a message object of type '<PathSegmentInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'color) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'color)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSegmentInfo>)))
  "Returns string type for a message object of type '<PathSegmentInfo>"
  "agv_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSegmentInfo)))
  "Returns string type for a message object of type 'PathSegmentInfo"
  "agv_msgs/PathSegmentInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSegmentInfo>)))
  "Returns md5sum for a message object of type '<PathSegmentInfo>"
  "8c9bb7ab00e46283462814c46c76dfc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSegmentInfo)))
  "Returns md5sum for a message object of type 'PathSegmentInfo"
  "8c9bb7ab00e46283462814c46c76dfc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSegmentInfo>)))
  "Returns full string definition for message of type '<PathSegmentInfo>"
  (cl:format cl:nil "agv_msgs/ID id~%~%uint8 type~%uint8 UNKNOWN=0~%~%string name~%uint8[4] color~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSegmentInfo)))
  "Returns full string definition for message of type 'PathSegmentInfo"
  (cl:format cl:nil "agv_msgs/ID id~%~%uint8 type~%uint8 UNKNOWN=0~%~%string name~%uint8[4] color~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSegmentInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     1
     4 (cl:length (cl:slot-value msg 'name))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSegmentInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSegmentInfo
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':color (color msg))
))
