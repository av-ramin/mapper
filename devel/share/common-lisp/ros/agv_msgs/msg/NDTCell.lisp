; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude NDTCell.msg.html

(cl:defclass <NDTCell> (roslisp-msg-protocol:ros-message)
  ((centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (num_points
    :reader num_points
    :initarg :num_points
    :type cl:integer
    :initform 0))
)

(cl:defclass NDTCell (<NDTCell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NDTCell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NDTCell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<NDTCell> is deprecated: use agv_msgs-msg:NDTCell instead.")))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <NDTCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:centroid-val is deprecated.  Use agv_msgs-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <NDTCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:covariance-val is deprecated.  Use agv_msgs-msg:covariance instead.")
  (covariance m))

(cl:ensure-generic-function 'num_points-val :lambda-list '(m))
(cl:defmethod num_points-val ((m <NDTCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:num_points-val is deprecated.  Use agv_msgs-msg:num_points instead.")
  (num_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NDTCell>) ostream)
  "Serializes a message object of type '<NDTCell>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'num_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'num_points)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NDTCell>) istream)
  "Deserializes a message object of type '<NDTCell>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'num_points)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NDTCell>)))
  "Returns string type for a message object of type '<NDTCell>"
  "agv_msgs/NDTCell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NDTCell)))
  "Returns string type for a message object of type 'NDTCell"
  "agv_msgs/NDTCell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NDTCell>)))
  "Returns md5sum for a message object of type '<NDTCell>"
  "65aeba4f5b8d0bf1ffd3b8955d3f8799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NDTCell)))
  "Returns md5sum for a message object of type 'NDTCell"
  "65aeba4f5b8d0bf1ffd3b8955d3f8799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NDTCell>)))
  "Returns full string definition for message of type '<NDTCell>"
  (cl:format cl:nil "geometry_msgs/Point  centroid~%float64[9]           covariance~%uint64               num_points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NDTCell)))
  "Returns full string definition for message of type 'NDTCell"
  (cl:format cl:nil "geometry_msgs/Point  centroid~%float64[9]           covariance~%uint64               num_points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NDTCell>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NDTCell>))
  "Converts a ROS message object to a list"
  (cl:list 'NDTCell
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':covariance (covariance msg))
    (cl:cons ':num_points (num_points msg))
))
