; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Behavior.msg.html

(cl:defclass <Behavior> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type agv_msgs-msg:BehaviorInfo
    :initform (cl:make-instance 'agv_msgs-msg:BehaviorInfo))
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector agv_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:KeyValue :initial-element (cl:make-instance 'agv_msgs-msg:KeyValue))))
)

(cl:defclass Behavior (<Behavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Behavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Behavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Behavior> is deprecated: use agv_msgs-msg:Behavior instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:info-val is deprecated.  Use agv_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:properties-val is deprecated.  Use agv_msgs-msg:properties instead.")
  (properties m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Behavior>) ostream)
  "Serializes a message object of type '<Behavior>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Behavior>) istream)
  "Deserializes a message object of type '<Behavior>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Behavior>)))
  "Returns string type for a message object of type '<Behavior>"
  "agv_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Behavior)))
  "Returns string type for a message object of type 'Behavior"
  "agv_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Behavior>)))
  "Returns md5sum for a message object of type '<Behavior>"
  "ead27a2d6e2bdcc7f79010ccab812ae7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Behavior)))
  "Returns md5sum for a message object of type 'Behavior"
  "ead27a2d6e2bdcc7f79010ccab812ae7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Behavior>)))
  "Returns full string definition for message of type '<Behavior>"
  (cl:format cl:nil "agv_msgs/BehaviorInfo info~%agv_msgs/KeyValue[] properties~%================================================================================~%MSG: agv_msgs/BehaviorInfo~%agv_msgs/ID id~%string name~%uint16 priority~%bool enabled~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Behavior)))
  "Returns full string definition for message of type 'Behavior"
  (cl:format cl:nil "agv_msgs/BehaviorInfo info~%agv_msgs/KeyValue[] properties~%================================================================================~%MSG: agv_msgs/BehaviorInfo~%agv_msgs/ID id~%string name~%uint16 priority~%bool enabled~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Behavior>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Behavior>))
  "Converts a ROS message object to a list"
  (cl:list 'Behavior
    (cl:cons ':info (info msg))
    (cl:cons ':properties (properties msg))
))
