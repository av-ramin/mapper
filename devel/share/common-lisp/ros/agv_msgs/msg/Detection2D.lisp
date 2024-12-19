; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Detection2D.msg.html

(cl:defclass <Detection2D> (roslisp-msg-protocol:ros-message)
  ((class_id
    :reader class_id
    :initarg :class_id
    :type cl:integer
    :initform 0)
   (class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform "")
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (xmin
    :reader xmin
    :initarg :xmin
    :type cl:integer
    :initform 0)
   (ymin
    :reader ymin
    :initarg :ymin
    :type cl:integer
    :initform 0)
   (xmax
    :reader xmax
    :initarg :xmax
    :type cl:integer
    :initform 0)
   (ymax
    :reader ymax
    :initarg :ymax
    :type cl:integer
    :initform 0)
   (yaw_hor
    :reader yaw_hor
    :initarg :yaw_hor
    :type cl:float
    :initform 0.0)
   (yaw_hor_dev
    :reader yaw_hor_dev
    :initarg :yaw_hor_dev
    :type cl:float
    :initform 0.0)
   (yaw_ver
    :reader yaw_ver
    :initarg :yaw_ver
    :type cl:float
    :initform 0.0)
   (yaw_ver_dev
    :reader yaw_ver_dev
    :initarg :yaw_ver_dev
    :type cl:float
    :initform 0.0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (dist_dev
    :reader dist_dev
    :initarg :dist_dev
    :type cl:float
    :initform 0.0))
)

(cl:defclass Detection2D (<Detection2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Detection2D> is deprecated: use agv_msgs-msg:Detection2D instead.")))

(cl:ensure-generic-function 'class_id-val :lambda-list '(m))
(cl:defmethod class_id-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:class_id-val is deprecated.  Use agv_msgs-msg:class_id instead.")
  (class_id m))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:class_name-val is deprecated.  Use agv_msgs-msg:class_name instead.")
  (class_name m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:probability-val is deprecated.  Use agv_msgs-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:track_id-val is deprecated.  Use agv_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'xmin-val :lambda-list '(m))
(cl:defmethod xmin-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:xmin-val is deprecated.  Use agv_msgs-msg:xmin instead.")
  (xmin m))

(cl:ensure-generic-function 'ymin-val :lambda-list '(m))
(cl:defmethod ymin-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ymin-val is deprecated.  Use agv_msgs-msg:ymin instead.")
  (ymin m))

(cl:ensure-generic-function 'xmax-val :lambda-list '(m))
(cl:defmethod xmax-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:xmax-val is deprecated.  Use agv_msgs-msg:xmax instead.")
  (xmax m))

(cl:ensure-generic-function 'ymax-val :lambda-list '(m))
(cl:defmethod ymax-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ymax-val is deprecated.  Use agv_msgs-msg:ymax instead.")
  (ymax m))

(cl:ensure-generic-function 'yaw_hor-val :lambda-list '(m))
(cl:defmethod yaw_hor-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:yaw_hor-val is deprecated.  Use agv_msgs-msg:yaw_hor instead.")
  (yaw_hor m))

(cl:ensure-generic-function 'yaw_hor_dev-val :lambda-list '(m))
(cl:defmethod yaw_hor_dev-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:yaw_hor_dev-val is deprecated.  Use agv_msgs-msg:yaw_hor_dev instead.")
  (yaw_hor_dev m))

(cl:ensure-generic-function 'yaw_ver-val :lambda-list '(m))
(cl:defmethod yaw_ver-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:yaw_ver-val is deprecated.  Use agv_msgs-msg:yaw_ver instead.")
  (yaw_ver m))

(cl:ensure-generic-function 'yaw_ver_dev-val :lambda-list '(m))
(cl:defmethod yaw_ver_dev-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:yaw_ver_dev-val is deprecated.  Use agv_msgs-msg:yaw_ver_dev instead.")
  (yaw_ver_dev m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist-val is deprecated.  Use agv_msgs-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'dist_dev-val :lambda-list '(m))
(cl:defmethod dist_dev-val ((m <Detection2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:dist_dev-val is deprecated.  Use agv_msgs-msg:dist_dev instead.")
  (dist_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection2D>) ostream)
  "Serializes a message object of type '<Detection2D>"
  (cl:let* ((signed (cl:slot-value msg 'class_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'xmin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ymin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'xmax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ymax)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ymax)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_hor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_hor_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_ver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_ver_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection2D>) istream)
  "Deserializes a message object of type '<Detection2D>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'xmin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ymin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'xmax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ymax)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_hor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_hor_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_ver) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_ver_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_dev) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection2D>)))
  "Returns string type for a message object of type '<Detection2D>"
  "agv_msgs/Detection2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection2D)))
  "Returns string type for a message object of type 'Detection2D"
  "agv_msgs/Detection2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection2D>)))
  "Returns md5sum for a message object of type '<Detection2D>"
  "828b4a851eb90a71558f422ff404dc24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection2D)))
  "Returns md5sum for a message object of type 'Detection2D"
  "828b4a851eb90a71558f422ff404dc24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection2D>)))
  "Returns full string definition for message of type '<Detection2D>"
  (cl:format cl:nil "int32 class_id~%string class_name~%float32 probability~%int32 track_id~%uint32 xmin~%uint32 ymin~%uint32 xmax~%uint32 ymax~%float32 yaw_hor~%float32 yaw_hor_dev~%float32 yaw_ver~%float32 yaw_ver_dev~%float32 dist~%float32 dist_dev~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection2D)))
  "Returns full string definition for message of type 'Detection2D"
  (cl:format cl:nil "int32 class_id~%string class_name~%float32 probability~%int32 track_id~%uint32 xmin~%uint32 ymin~%uint32 xmax~%uint32 ymax~%float32 yaw_hor~%float32 yaw_hor_dev~%float32 yaw_ver~%float32 yaw_ver_dev~%float32 dist~%float32 dist_dev~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection2D>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'class_name))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection2D
    (cl:cons ':class_id (class_id msg))
    (cl:cons ':class_name (class_name msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':xmin (xmin msg))
    (cl:cons ':ymin (ymin msg))
    (cl:cons ':xmax (xmax msg))
    (cl:cons ':ymax (ymax msg))
    (cl:cons ':yaw_hor (yaw_hor msg))
    (cl:cons ':yaw_hor_dev (yaw_hor_dev msg))
    (cl:cons ':yaw_ver (yaw_ver msg))
    (cl:cons ':yaw_ver_dev (yaw_ver_dev msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':dist_dev (dist_dev msg))
))
