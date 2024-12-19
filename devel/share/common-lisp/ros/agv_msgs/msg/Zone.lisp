; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude Zone.msg.html

(cl:defclass <Zone> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type agv_msgs-msg:ZoneInfo
    :initform (cl:make-instance 'agv_msgs-msg:ZoneInfo))
   (shape
    :reader shape
    :initarg :shape
    :type agv_msgs-msg:ZoneShape
    :initform (cl:make-instance 'agv_msgs-msg:ZoneShape)))
)

(cl:defclass Zone (<Zone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Zone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Zone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<Zone> is deprecated: use agv_msgs-msg:Zone instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Zone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:info-val is deprecated.  Use agv_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <Zone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:shape-val is deprecated.  Use agv_msgs-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Zone>) ostream)
  "Serializes a message object of type '<Zone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Zone>) istream)
  "Deserializes a message object of type '<Zone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Zone>)))
  "Returns string type for a message object of type '<Zone>"
  "agv_msgs/Zone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Zone)))
  "Returns string type for a message object of type 'Zone"
  "agv_msgs/Zone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Zone>)))
  "Returns md5sum for a message object of type '<Zone>"
  "5040c20424776948eebc0958029800d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Zone)))
  "Returns md5sum for a message object of type 'Zone"
  "5040c20424776948eebc0958029800d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Zone>)))
  "Returns full string definition for message of type '<Zone>"
  (cl:format cl:nil "agv_msgs/ZoneInfo info~%agv_msgs/ZoneShape shape ~%================================================================================~%MSG: agv_msgs/ZoneInfo~%agv_msgs/ID id~%string group~%string name~%std_msgs/ColorRGBA color~%agv_msgs/KeyValue[] properties~%bool visible~%time creation_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: agv_msgs/ZoneShape~%string frame_id~%geometry_msgs/Point32[] points~%float32 radius~%~%uint8 type~%uint8 INVALID = 0~%uint8 POLYGON = 1~%uint8 RADIUS = 2 ~%uint8 BARRIER = 3  ~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Zone)))
  "Returns full string definition for message of type 'Zone"
  (cl:format cl:nil "agv_msgs/ZoneInfo info~%agv_msgs/ZoneShape shape ~%================================================================================~%MSG: agv_msgs/ZoneInfo~%agv_msgs/ID id~%string group~%string name~%std_msgs/ColorRGBA color~%agv_msgs/KeyValue[] properties~%bool visible~%time creation_time~%================================================================================~%MSG: agv_msgs/ID~% uint32 data~%~% uint32 INVALID_ID=0~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: agv_msgs/KeyValue~%string key~%string value~%================================================================================~%MSG: agv_msgs/ZoneShape~%string frame_id~%geometry_msgs/Point32[] points~%float32 radius~%~%uint8 type~%uint8 INVALID = 0~%uint8 POLYGON = 1~%uint8 RADIUS = 2 ~%uint8 BARRIER = 3  ~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Zone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Zone>))
  "Converts a ROS message object to a list"
  (cl:list 'Zone
    (cl:cons ':info (info msg))
    (cl:cons ':shape (shape msg))
))
