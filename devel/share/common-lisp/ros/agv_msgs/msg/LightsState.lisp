; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude LightsState.msg.html

(cl:defclass <LightsState> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector agv_msgs-msg:LightState)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:LightState :initial-element (cl:make-instance 'agv_msgs-msg:LightState))))
)

(cl:defclass LightsState (<LightsState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightsState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightsState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<LightsState> is deprecated: use agv_msgs-msg:LightsState instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <LightsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:states-val is deprecated.  Use agv_msgs-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightsState>) ostream)
  "Serializes a message object of type '<LightsState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightsState>) istream)
  "Deserializes a message object of type '<LightsState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:LightState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightsState>)))
  "Returns string type for a message object of type '<LightsState>"
  "agv_msgs/LightsState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightsState)))
  "Returns string type for a message object of type 'LightsState"
  "agv_msgs/LightsState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightsState>)))
  "Returns md5sum for a message object of type '<LightsState>"
  "be4eb97b3931f6aab3264f5b626bd43a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightsState)))
  "Returns md5sum for a message object of type 'LightsState"
  "be4eb97b3931f6aab3264f5b626bd43a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightsState>)))
  "Returns full string definition for message of type '<LightsState>"
  (cl:format cl:nil "agv_msgs/LightState[] states~%================================================================================~%MSG: agv_msgs/LightState~%string name~%float32 freq~%float32 duty~%uint32 periods_set~%uint32 periods_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightsState)))
  "Returns full string definition for message of type 'LightsState"
  (cl:format cl:nil "agv_msgs/LightState[] states~%================================================================================~%MSG: agv_msgs/LightState~%string name~%float32 freq~%float32 duty~%uint32 periods_set~%uint32 periods_remaining~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightsState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightsState>))
  "Converts a ROS message object to a list"
  (cl:list 'LightsState
    (cl:cons ':states (states msg))
))
