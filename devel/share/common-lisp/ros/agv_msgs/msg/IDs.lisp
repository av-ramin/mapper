; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude IDs.msg.html

(cl:defclass <IDs> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector agv_msgs-msg:ID)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:ID :initial-element (cl:make-instance 'agv_msgs-msg:ID))))
)

(cl:defclass IDs (<IDs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IDs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IDs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<IDs> is deprecated: use agv_msgs-msg:IDs instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <IDs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ids-val is deprecated.  Use agv_msgs-msg:ids instead.")
  (ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IDs>) ostream)
  "Serializes a message object of type '<IDs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IDs>) istream)
  "Deserializes a message object of type '<IDs>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IDs>)))
  "Returns string type for a message object of type '<IDs>"
  "agv_msgs/IDs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IDs)))
  "Returns string type for a message object of type 'IDs"
  "agv_msgs/IDs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IDs>)))
  "Returns md5sum for a message object of type '<IDs>"
  "d86b5640038c0900844695683d4a6029")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IDs)))
  "Returns md5sum for a message object of type 'IDs"
  "d86b5640038c0900844695683d4a6029")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IDs>)))
  "Returns full string definition for message of type '<IDs>"
  (cl:format cl:nil "agv_msgs/ID[] ids~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IDs)))
  "Returns full string definition for message of type 'IDs"
  (cl:format cl:nil "agv_msgs/ID[] ids~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IDs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IDs>))
  "Converts a ROS message object to a list"
  (cl:list 'IDs
    (cl:cons ':ids (ids msg))
))
