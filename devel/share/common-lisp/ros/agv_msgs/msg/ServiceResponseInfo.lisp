; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ServiceResponseInfo.msg.html

(cl:defclass <ServiceResponseInfo> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceResponseInfo (<ServiceResponseInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceResponseInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceResponseInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ServiceResponseInfo> is deprecated: use agv_msgs-msg:ServiceResponseInfo instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ServiceResponseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:success-val is deprecated.  Use agv_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ServiceResponseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:message-val is deprecated.  Use agv_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceResponseInfo>) ostream)
  "Serializes a message object of type '<ServiceResponseInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceResponseInfo>) istream)
  "Deserializes a message object of type '<ServiceResponseInfo>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceResponseInfo>)))
  "Returns string type for a message object of type '<ServiceResponseInfo>"
  "agv_msgs/ServiceResponseInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceResponseInfo)))
  "Returns string type for a message object of type 'ServiceResponseInfo"
  "agv_msgs/ServiceResponseInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceResponseInfo>)))
  "Returns md5sum for a message object of type '<ServiceResponseInfo>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceResponseInfo)))
  "Returns md5sum for a message object of type 'ServiceResponseInfo"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceResponseInfo>)))
  "Returns full string definition for message of type '<ServiceResponseInfo>"
  (cl:format cl:nil "bool success~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceResponseInfo)))
  "Returns full string definition for message of type 'ServiceResponseInfo"
  (cl:format cl:nil "bool success~%string message~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceResponseInfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceResponseInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceResponseInfo
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
