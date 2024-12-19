; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude RecordingStatus.msg.html

(cl:defclass <RecordingStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (recorder_active
    :reader recorder_active
    :initarg :recorder_active
    :type cl:boolean
    :initform cl:nil)
   (bag_name
    :reader bag_name
    :initarg :bag_name
    :type cl:string
    :initform "")
   (bag_size_gb
    :reader bag_size_gb
    :initarg :bag_size_gb
    :type cl:float
    :initform 0.0)
   (free_space_gb
    :reader free_space_gb
    :initarg :free_space_gb
    :type cl:float
    :initform 0.0))
)

(cl:defclass RecordingStatus (<RecordingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<RecordingStatus> is deprecated: use agv_msgs-msg:RecordingStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RecordingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'recorder_active-val :lambda-list '(m))
(cl:defmethod recorder_active-val ((m <RecordingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:recorder_active-val is deprecated.  Use agv_msgs-msg:recorder_active instead.")
  (recorder_active m))

(cl:ensure-generic-function 'bag_name-val :lambda-list '(m))
(cl:defmethod bag_name-val ((m <RecordingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:bag_name-val is deprecated.  Use agv_msgs-msg:bag_name instead.")
  (bag_name m))

(cl:ensure-generic-function 'bag_size_gb-val :lambda-list '(m))
(cl:defmethod bag_size_gb-val ((m <RecordingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:bag_size_gb-val is deprecated.  Use agv_msgs-msg:bag_size_gb instead.")
  (bag_size_gb m))

(cl:ensure-generic-function 'free_space_gb-val :lambda-list '(m))
(cl:defmethod free_space_gb-val ((m <RecordingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:free_space_gb-val is deprecated.  Use agv_msgs-msg:free_space_gb instead.")
  (free_space_gb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordingStatus>) ostream)
  "Serializes a message object of type '<RecordingStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recorder_active) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bag_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bag_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bag_size_gb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'free_space_gb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordingStatus>) istream)
  "Deserializes a message object of type '<RecordingStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'recorder_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bag_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bag_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bag_size_gb) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free_space_gb) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordingStatus>)))
  "Returns string type for a message object of type '<RecordingStatus>"
  "agv_msgs/RecordingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordingStatus)))
  "Returns string type for a message object of type 'RecordingStatus"
  "agv_msgs/RecordingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordingStatus>)))
  "Returns md5sum for a message object of type '<RecordingStatus>"
  "2a17c53f7b4ef4b7bd3c1b923d7ae852")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordingStatus)))
  "Returns md5sum for a message object of type 'RecordingStatus"
  "2a17c53f7b4ef4b7bd3c1b923d7ae852")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordingStatus>)))
  "Returns full string definition for message of type '<RecordingStatus>"
  (cl:format cl:nil "Header header~%bool recorder_active~%string bag_name~%float32 bag_size_gb~%float32 free_space_gb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordingStatus)))
  "Returns full string definition for message of type 'RecordingStatus"
  (cl:format cl:nil "Header header~%bool recorder_active~%string bag_name~%float32 bag_size_gb~%float32 free_space_gb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordingStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'bag_name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordingStatus
    (cl:cons ':header (header msg))
    (cl:cons ':recorder_active (recorder_active msg))
    (cl:cons ':bag_name (bag_name msg))
    (cl:cons ':bag_size_gb (bag_size_gb msg))
    (cl:cons ':free_space_gb (free_space_gb msg))
))
