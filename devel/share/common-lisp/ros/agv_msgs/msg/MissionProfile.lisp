; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude MissionProfile.msg.html

(cl:defclass <MissionProfile> (roslisp-msg-protocol:ros-message)
  ((path_id
    :reader path_id
    :initarg :path_id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (config
    :reader config
    :initarg :config
    :type agv_msgs-msg:NavigationConfig
    :initform (cl:make-instance 'agv_msgs-msg:NavigationConfig))
   (behaviors
    :reader behaviors
    :initarg :behaviors
    :type (cl:vector agv_msgs-msg:ID)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:ID :initial-element (cl:make-instance 'agv_msgs-msg:ID)))
   (zones
    :reader zones
    :initarg :zones
    :type (cl:vector agv_msgs-msg:ID)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:ID :initial-element (cl:make-instance 'agv_msgs-msg:ID))))
)

(cl:defclass MissionProfile (<MissionProfile>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionProfile>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionProfile)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<MissionProfile> is deprecated: use agv_msgs-msg:MissionProfile instead.")))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <MissionProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:path_id-val is deprecated.  Use agv_msgs-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <MissionProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:config-val is deprecated.  Use agv_msgs-msg:config instead.")
  (config m))

(cl:ensure-generic-function 'behaviors-val :lambda-list '(m))
(cl:defmethod behaviors-val ((m <MissionProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:behaviors-val is deprecated.  Use agv_msgs-msg:behaviors instead.")
  (behaviors m))

(cl:ensure-generic-function 'zones-val :lambda-list '(m))
(cl:defmethod zones-val ((m <MissionProfile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:zones-val is deprecated.  Use agv_msgs-msg:zones instead.")
  (zones m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionProfile>) ostream)
  "Serializes a message object of type '<MissionProfile>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'behaviors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'behaviors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zones))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionProfile>) istream)
  "Deserializes a message object of type '<MissionProfile>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'behaviors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'behaviors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:ID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:ID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionProfile>)))
  "Returns string type for a message object of type '<MissionProfile>"
  "agv_msgs/MissionProfile")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionProfile)))
  "Returns string type for a message object of type 'MissionProfile"
  "agv_msgs/MissionProfile")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionProfile>)))
  "Returns md5sum for a message object of type '<MissionProfile>"
  "bafac555455751c88b658e71984a8344")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionProfile)))
  "Returns md5sum for a message object of type 'MissionProfile"
  "bafac555455751c88b658e71984a8344")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionProfile>)))
  "Returns full string definition for message of type '<MissionProfile>"
  (cl:format cl:nil "agv_msgs/ID path_id~%agv_msgs/NavigationConfig config~%agv_msgs/ID[] behaviors~%agv_msgs/ID[] zones~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionProfile)))
  "Returns full string definition for message of type 'MissionProfile"
  (cl:format cl:nil "agv_msgs/ID path_id~%agv_msgs/NavigationConfig config~%agv_msgs/ID[] behaviors~%agv_msgs/ID[] zones~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionProfile>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'behaviors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionProfile>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionProfile
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':config (config msg))
    (cl:cons ':behaviors (behaviors msg))
    (cl:cons ':zones (zones msg))
))
