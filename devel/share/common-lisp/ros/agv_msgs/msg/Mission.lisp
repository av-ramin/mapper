; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Mission.msg.html

(cl:defclass <Mission> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type agv_msgs-msg:MissionInfo
    :initform (cl:make-instance 'agv_msgs-msg:MissionInfo))
   (profile
    :reader profile
    :initarg :profile
    :type agv_msgs-msg:MissionProfile
    :initform (cl:make-instance 'agv_msgs-msg:MissionProfile)))
)

(cl:defclass Mission (<Mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Mission> is deprecated: use agv_msgs-msg:Mission instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:info-val is deprecated.  Use agv_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'profile-val :lambda-list '(m))
(cl:defmethod profile-val ((m <Mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:profile-val is deprecated.  Use agv_msgs-msg:profile instead.")
  (profile m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mission>) ostream)
  "Serializes a message object of type '<Mission>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'profile) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mission>) istream)
  "Deserializes a message object of type '<Mission>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'profile) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mission>)))
  "Returns string type for a message object of type '<Mission>"
  "agv_msgs/Mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mission)))
  "Returns string type for a message object of type 'Mission"
  "agv_msgs/Mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mission>)))
  "Returns md5sum for a message object of type '<Mission>"
  "fdb503fbfee60173009aba68eb8b2b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mission)))
  "Returns md5sum for a message object of type 'Mission"
  "fdb503fbfee60173009aba68eb8b2b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mission>)))
  "Returns full string definition for message of type '<Mission>"
  (cl:format cl:nil "agv_msgs/MissionInfo info~%agv_msgs/MissionProfile profile~%================================================================================~%MSG: agv_msgs/MissionInfo~%  agv_msgs/ID id~%  string name~%  string description~%  string group~%  time creation_time~%  time modification_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/MissionProfile~%agv_msgs/ID path_id~%agv_msgs/NavigationConfig config~%agv_msgs/ID[] behaviors~%agv_msgs/ID[] zones~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mission)))
  "Returns full string definition for message of type 'Mission"
  (cl:format cl:nil "agv_msgs/MissionInfo info~%agv_msgs/MissionProfile profile~%================================================================================~%MSG: agv_msgs/MissionInfo~%  agv_msgs/ID id~%  string name~%  string description~%  string group~%  time creation_time~%  time modification_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/MissionProfile~%agv_msgs/ID path_id~%agv_msgs/NavigationConfig config~%agv_msgs/ID[] behaviors~%agv_msgs/ID[] zones~%================================================================================~%MSG: agv_msgs/NavigationConfig~%uint8 direction~%uint8 DIR_FORWARD=0~%uint8 DIR_CLOCKWISE=0~%uint8 DIR_REVERSE=1~%uint8 DIR_COUNTERCLOCKWISE=1~%~%uint8 repeat_mode~%uint8 REPEAT_NONE=0~%uint8 REPEAT_CIRCULAR=1~%uint8 REPEAT_DOUBLE_BACK=2~%~%uint16 no_of_loops~%uint8 INFINITE_LOOPS = 0~%uint8 SINGLE_EXECUTION = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mission>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'profile))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mission>))
  "Converts a ROS message object to a list"
  (cl:list 'Mission
    (cl:cons ':info (info msg))
    (cl:cons ':profile (profile msg))
))
