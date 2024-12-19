;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Obstacle)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Obstacle (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::OBSTACLE")
  (make-package "AGV_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::Obstacle
  :super ros::object
  :slots (_header _info _shape ))

(defmethod agv_msgs::Obstacle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance agv_msgs::ObstacleInfo :init))
    ((:shape __shape) (instance agv_msgs::ObstacleShape :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _shape __shape)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/ObstacleInfo _info
    (send _info :serialization-length)
    ;; agv_msgs/ObstacleShape _shape
    (send _shape :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/ObstacleInfo _info
       (send _info :serialize s)
     ;; agv_msgs/ObstacleShape _shape
       (send _shape :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/ObstacleInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; agv_msgs/ObstacleShape _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::Obstacle :md5sum-) "f9a9ae43bd863b8343b3c3c58447e9df")
(setf (get agv_msgs::Obstacle :datatype-) "agv_msgs/Obstacle")
(setf (get agv_msgs::Obstacle :definition-)
      "Header header
agv_msgs/ObstacleInfo info
agv_msgs/ObstacleShape shape 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: agv_msgs/ObstacleInfo
string description
uint16 symbol
agv_msgs/ID layer_id
bool enabled
uint16 priority

uint8 operation
uint8 REPLACE = 0
uint8 ADD = 1
uint8 SUBTRACT = 2
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/ObstacleShape
agv_msgs/ID id
geometry_msgs/Point32[] points 
float32 cost
float32 radius
string frame_id

uint8 type
uint8 INVALID = 0
uint8 POLYGON = 1
uint8 RADIUS = 2 
uint8 BARRIER = 3  
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :agv_msgs/Obstacle "f9a9ae43bd863b8343b3c3c58447e9df")


