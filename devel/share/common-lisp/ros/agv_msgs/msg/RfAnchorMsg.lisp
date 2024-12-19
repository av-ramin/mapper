; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude RfAnchorMsg.msg.html

(cl:defclass <RfAnchorMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (anchor_addr
    :reader anchor_addr
    :initarg :anchor_addr
    :type cl:string
    :initform ""))
)

(cl:defclass RfAnchorMsg (<RfAnchorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfAnchorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfAnchorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<RfAnchorMsg> is deprecated: use agv_msgs-msg:RfAnchorMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RfAnchorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'anchor_addr-val :lambda-list '(m))
(cl:defmethod anchor_addr-val ((m <RfAnchorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:anchor_addr-val is deprecated.  Use agv_msgs-msg:anchor_addr instead.")
  (anchor_addr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfAnchorMsg>) ostream)
  "Serializes a message object of type '<RfAnchorMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'anchor_addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'anchor_addr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfAnchorMsg>) istream)
  "Deserializes a message object of type '<RfAnchorMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'anchor_addr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'anchor_addr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfAnchorMsg>)))
  "Returns string type for a message object of type '<RfAnchorMsg>"
  "agv_msgs/RfAnchorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfAnchorMsg)))
  "Returns string type for a message object of type 'RfAnchorMsg"
  "agv_msgs/RfAnchorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfAnchorMsg>)))
  "Returns md5sum for a message object of type '<RfAnchorMsg>"
  "baf38b7875de64b2012ac42bc0eb4d29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfAnchorMsg)))
  "Returns md5sum for a message object of type 'RfAnchorMsg"
  "baf38b7875de64b2012ac42bc0eb4d29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfAnchorMsg>)))
  "Returns full string definition for message of type '<RfAnchorMsg>"
  (cl:format cl:nil "Header header~%string anchor_addr~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfAnchorMsg)))
  "Returns full string definition for message of type 'RfAnchorMsg"
  (cl:format cl:nil "Header header~%string anchor_addr~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfAnchorMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'anchor_addr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfAnchorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RfAnchorMsg
    (cl:cons ':header (header msg))
    (cl:cons ':anchor_addr (anchor_addr msg))
))
