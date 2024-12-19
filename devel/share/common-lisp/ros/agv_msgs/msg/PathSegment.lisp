; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude PathSegment.msg.html

(cl:defclass <PathSegment> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector agv_msgs-msg:ID)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:ID :initial-element (cl:make-instance 'agv_msgs-msg:ID)))
   (info
    :reader info
    :initarg :info
    :type agv_msgs-msg:PathSegmentInfo
    :initform (cl:make-instance 'agv_msgs-msg:PathSegmentInfo)))
)

(cl:defclass PathSegment (<PathSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<PathSegment> is deprecated: use agv_msgs-msg:PathSegment instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <PathSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ids-val is deprecated.  Use agv_msgs-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <PathSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:info-val is deprecated.  Use agv_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSegment>) ostream)
  "Serializes a message object of type '<PathSegment>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ids))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSegment>) istream)
  "Deserializes a message object of type '<PathSegment>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:ID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSegment>)))
  "Returns string type for a message object of type '<PathSegment>"
  "agv_msgs/PathSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSegment)))
  "Returns string type for a message object of type 'PathSegment"
  "agv_msgs/PathSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSegment>)))
  "Returns md5sum for a message object of type '<PathSegment>"
  "514c4a42318df3f68cc4c347460e4627")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSegment)))
  "Returns md5sum for a message object of type 'PathSegment"
  "514c4a42318df3f68cc4c347460e4627")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSegment>)))
  "Returns full string definition for message of type '<PathSegment>"
  (cl:format cl:nil "agv_msgs/ID[] ids~%agv_msgs/PathSegmentInfo info~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/PathSegmentInfo~%agv_msgs/ID id~%~%uint8 type~%uint8 UNKNOWN=0~%~%string name~%uint8[4] color~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSegment)))
  "Returns full string definition for message of type 'PathSegment"
  (cl:format cl:nil "agv_msgs/ID[] ids~%agv_msgs/PathSegmentInfo info~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: agv_msgs/PathSegmentInfo~%agv_msgs/ID id~%~%uint8 type~%uint8 UNKNOWN=0~%~%string name~%uint8[4] color~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSegment>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSegment
    (cl:cons ':ids (ids msg))
    (cl:cons ':info (info msg))
))
