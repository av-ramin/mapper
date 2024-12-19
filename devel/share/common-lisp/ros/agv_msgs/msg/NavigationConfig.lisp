; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NavigationConfig.msg.html

(cl:defclass <NavigationConfig> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (repeat_mode
    :reader repeat_mode
    :initarg :repeat_mode
    :type cl:fixnum
    :initform 0)
   (no_of_loops
    :reader no_of_loops
    :initarg :no_of_loops
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavigationConfig (<NavigationConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NavigationConfig> is deprecated: use agv_msgs-msg:NavigationConfig instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <NavigationConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:direction-val is deprecated.  Use agv_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'repeat_mode-val :lambda-list '(m))
(cl:defmethod repeat_mode-val ((m <NavigationConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:repeat_mode-val is deprecated.  Use agv_msgs-msg:repeat_mode instead.")
  (repeat_mode m))

(cl:ensure-generic-function 'no_of_loops-val :lambda-list '(m))
(cl:defmethod no_of_loops-val ((m <NavigationConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:no_of_loops-val is deprecated.  Use agv_msgs-msg:no_of_loops instead.")
  (no_of_loops m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationConfig>)))
    "Constants for message type '<NavigationConfig>"
  '((:DIR_FORWARD . 0)
    (:DIR_CLOCKWISE . 0)
    (:DIR_REVERSE . 1)
    (:DIR_COUNTERCLOCKWISE . 1)
    (:REPEAT_NONE . 0)
    (:REPEAT_CIRCULAR . 1)
    (:REPEAT_DOUBLE_BACK . 2)
    (:INFINITE_LOOPS . 0)
    (:SINGLE_EXECUTION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationConfig)))
    "Constants for message type 'NavigationConfig"
  '((:DIR_FORWARD . 0)
    (:DIR_CLOCKWISE . 0)
    (:DIR_REVERSE . 1)
    (:DIR_COUNTERCLOCKWISE . 1)
    (:REPEAT_NONE . 0)
    (:REPEAT_CIRCULAR . 1)
    (:REPEAT_DOUBLE_BACK . 2)
    (:INFINITE_LOOPS . 0)
    (:SINGLE_EXECUTION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationConfig>) ostream)
  "Serializes a message object of type '<NavigationConfig>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_loops)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'no_of_loops)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationConfig>) istream)
  "Deserializes a message object of type '<NavigationConfig>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'no_of_loops)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'no_of_loops)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationConfig>)))
  "Returns string type for a message object of type '<NavigationConfig>"
  "agv_msgs/NavigationConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationConfig)))
  "Returns string type for a message object of type 'NavigationConfig"
  "agv_msgs/NavigationConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationConfig>)))
  "Returns md5sum for a message object of type '<NavigationConfig>"
  "cb4f63e9ded9599f26fd23654a8fbe60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationConfig)))
  "Returns md5sum for a message object of type 'NavigationConfig"
  "cb4f63e9ded9599f26fd23654a8fbe60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationConfig>)))
  "Returns full string definition for message of type '<NavigationConfig>"
  (cl:format cl:nil "uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationConfig)))
  "Returns full string definition for message of type 'NavigationConfig"
  (cl:format cl:nil "uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationConfig>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationConfig
    (cl:cons ':direction (direction msg))
    (cl:cons ':repeat_mode (repeat_mode msg))
    (cl:cons ':no_of_loops (no_of_loops msg))
))
