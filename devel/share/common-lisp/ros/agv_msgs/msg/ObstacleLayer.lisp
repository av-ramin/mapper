; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ObstacleLayer.msg.html

(cl:defclass <ObstacleLayer> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (color
    :reader color
    :initarg :color
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (order
    :reader order
    :initarg :order
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObstacleLayer (<ObstacleLayer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleLayer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleLayer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ObstacleLayer> is deprecated: use agv_msgs-msg:ObstacleLayer instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ObstacleLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ObstacleLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:id-val is deprecated.  Use agv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <ObstacleLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:color-val is deprecated.  Use agv_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <ObstacleLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:order-val is deprecated.  Use agv_msgs-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleLayer>) ostream)
  "Serializes a message object of type '<ObstacleLayer>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'color))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleLayer>) istream)
  "Deserializes a message object of type '<ObstacleLayer>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (cl:setf (cl:slot-value msg 'color) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'color)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'order)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleLayer>)))
  "Returns string type for a message object of type '<ObstacleLayer>"
  "agv_msgs/ObstacleLayer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleLayer)))
  "Returns string type for a message object of type 'ObstacleLayer"
  "agv_msgs/ObstacleLayer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleLayer>)))
  "Returns md5sum for a message object of type '<ObstacleLayer>"
  "8bd0537b4fe7e49768bd2ae71fd5bb22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleLayer)))
  "Returns md5sum for a message object of type 'ObstacleLayer"
  "8bd0537b4fe7e49768bd2ae71fd5bb22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleLayer>)))
  "Returns full string definition for message of type '<ObstacleLayer>"
  (cl:format cl:nil "string name~%agv_msgs/ID id~%uint8[4] color~%uint8 order~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleLayer)))
  "Returns full string definition for message of type 'ObstacleLayer"
  (cl:format cl:nil "string name~%agv_msgs/ID id~%uint8[4] color~%uint8 order~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleLayer>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleLayer>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleLayer
    (cl:cons ':name (name msg))
    (cl:cons ':id (id msg))
    (cl:cons ':color (color msg))
    (cl:cons ':order (order msg))
))
