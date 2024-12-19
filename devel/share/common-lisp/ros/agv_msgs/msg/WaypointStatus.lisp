; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude WaypointStatus.msg.html

(cl:defclass <WaypointStatus> (roslisp-msg-protocol:ros-message)
  ((goal_id
    :reader goal_id
    :initarg :goal_id
    :type agv_msgs-msg:ID
    :initform (cl:make-instance 'agv_msgs-msg:ID))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (road
    :reader road
    :initarg :road
    :type cl:boolean
    :initform cl:nil)
   (intersection
    :reader intersection
    :initarg :intersection
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WaypointStatus (<WaypointStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<WaypointStatus> is deprecated: use agv_msgs-msg:WaypointStatus instead.")))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <WaypointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:goal_id-val is deprecated.  Use agv_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WaypointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:state-val is deprecated.  Use agv_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <WaypointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radius-val is deprecated.  Use agv_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'road-val :lambda-list '(m))
(cl:defmethod road-val ((m <WaypointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:road-val is deprecated.  Use agv_msgs-msg:road instead.")
  (road m))

(cl:ensure-generic-function 'intersection-val :lambda-list '(m))
(cl:defmethod intersection-val ((m <WaypointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:intersection-val is deprecated.  Use agv_msgs-msg:intersection instead.")
  (intersection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointStatus>) ostream)
  "Serializes a message object of type '<WaypointStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'road) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'intersection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointStatus>) istream)
  "Deserializes a message object of type '<WaypointStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'road) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'intersection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointStatus>)))
  "Returns string type for a message object of type '<WaypointStatus>"
  "agv_msgs/WaypointStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointStatus)))
  "Returns string type for a message object of type 'WaypointStatus"
  "agv_msgs/WaypointStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointStatus>)))
  "Returns md5sum for a message object of type '<WaypointStatus>"
  "62191f205a4471b269c61732e2f09cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointStatus)))
  "Returns md5sum for a message object of type 'WaypointStatus"
  "62191f205a4471b269c61732e2f09cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointStatus>)))
  "Returns full string definition for message of type '<WaypointStatus>"
  (cl:format cl:nil "agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointStatus)))
  "Returns full string definition for message of type 'WaypointStatus"
  (cl:format cl:nil "agv_msgs/ID goal_id~%uint8 state # contins actionlib::SimpleClientGoalState state~%float32 radius~%bool road~%bool intersection~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointStatus
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':state (state msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':road (road msg))
    (cl:cons ':intersection (intersection msg))
))
