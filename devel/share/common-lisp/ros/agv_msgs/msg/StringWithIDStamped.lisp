; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude StringWithIDStamped.msg.html

(cl:defclass <StringWithIDStamped> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (creation_time
    :reader creation_time
    :initarg :creation_time
    :type cl:real
    :initform 0))
)

(cl:defclass StringWithIDStamped (<StringWithIDStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringWithIDStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringWithIDStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<StringWithIDStamped> is deprecated: use agv_msgs-msg:StringWithIDStamped instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <StringWithIDStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <StringWithIDStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:data-val is deprecated.  Use agv_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'creation_time-val :lambda-list '(m))
(cl:defmethod creation_time-val ((m <StringWithIDStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:creation_time-val is deprecated.  Use agv_msgs-msg:creation_time instead.")
  (creation_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringWithIDStamped>) ostream)
  "Serializes a message object of type '<StringWithIDStamped>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringWithIDStamped>) istream)
  "Deserializes a message object of type '<StringWithIDStamped>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringWithIDStamped>)))
  "Returns string type for a message object of type '<StringWithIDStamped>"
  "agv_msgs/StringWithIDStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringWithIDStamped)))
  "Returns string type for a message object of type 'StringWithIDStamped"
  "agv_msgs/StringWithIDStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringWithIDStamped>)))
  "Returns md5sum for a message object of type '<StringWithIDStamped>"
  "16d2a98e7f794a9581e118f4dada7d23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringWithIDStamped)))
  "Returns md5sum for a message object of type 'StringWithIDStamped"
  "16d2a98e7f794a9581e118f4dada7d23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringWithIDStamped>)))
  "Returns full string definition for message of type '<StringWithIDStamped>"
  (cl:format cl:nil "uint32 id~%string data~%time creation_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringWithIDStamped)))
  "Returns full string definition for message of type 'StringWithIDStamped"
  (cl:format cl:nil "uint32 id~%string data~%time creation_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringWithIDStamped>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'data))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringWithIDStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'StringWithIDStamped
    (cl:cons ':id (id msg))
    (cl:cons ':data (data msg))
    (cl:cons ':creation_time (creation_time msg))
))
