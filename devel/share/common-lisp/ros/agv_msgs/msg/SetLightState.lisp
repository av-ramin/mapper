; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SetLightState.msg.html

(cl:defclass <SetLightState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (duty
    :reader duty
    :initarg :duty
    :type cl:float
    :initform 0.0)
   (num_periods
    :reader num_periods
    :initarg :num_periods
    :type cl:integer
    :initform 0))
)

(cl:defclass SetLightState (<SetLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SetLightState> is deprecated: use agv_msgs-msg:SetLightState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:name-val is deprecated.  Use agv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <SetLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:frequency-val is deprecated.  Use agv_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'duty-val :lambda-list '(m))
(cl:defmethod duty-val ((m <SetLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:duty-val is deprecated.  Use agv_msgs-msg:duty instead.")
  (duty m))

(cl:ensure-generic-function 'num_periods-val :lambda-list '(m))
(cl:defmethod num_periods-val ((m <SetLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:num_periods-val is deprecated.  Use agv_msgs-msg:num_periods instead.")
  (num_periods m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLightState>) ostream)
  "Serializes a message object of type '<SetLightState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_periods)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_periods)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_periods)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_periods)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLightState>) istream)
  "Deserializes a message object of type '<SetLightState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_periods)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_periods)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_periods)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_periods)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLightState>)))
  "Returns string type for a message object of type '<SetLightState>"
  "agv_msgs/SetLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLightState)))
  "Returns string type for a message object of type 'SetLightState"
  "agv_msgs/SetLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLightState>)))
  "Returns md5sum for a message object of type '<SetLightState>"
  "194cab8d6bb9205433dc15755489711e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLightState)))
  "Returns md5sum for a message object of type 'SetLightState"
  "194cab8d6bb9205433dc15755489711e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLightState>)))
  "Returns full string definition for message of type '<SetLightState>"
  (cl:format cl:nil "string name~%float32 frequency~%float32 duty~%uint32 num_periods~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLightState)))
  "Returns full string definition for message of type 'SetLightState"
  (cl:format cl:nil "string name~%float32 frequency~%float32 duty~%uint32 num_periods~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLightState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLightState
    (cl:cons ':name (name msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':duty (duty msg))
    (cl:cons ':num_periods (num_periods msg))
))
