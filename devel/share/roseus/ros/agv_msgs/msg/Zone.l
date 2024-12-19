;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Zone)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Zone (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ZONE")
  (make-package "AGV_MSGS::ZONE"))

(in-package "ROS")
;;//! \htmlinclude Zone.msg.html


(defclass agv_msgs::Zone
  :super ros::object
  :slots (_info _shape ))

(defmethod agv_msgs::Zone
  (:init
   (&key
    ((:info __info) (instance agv_msgs::ZoneInfo :init))
    ((:shape __shape) (instance agv_msgs::ZoneShape :init))
    )
   (send-super :init)
   (setq _info __info)
   (setq _shape __shape)
   self)
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
    ;; agv_msgs/ZoneInfo _info
    (send _info :serialization-length)
    ;; agv_msgs/ZoneShape _shape
    (send _shape :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ZoneInfo _info
       (send _info :serialize s)
     ;; agv_msgs/ZoneShape _shape
       (send _shape :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ZoneInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; agv_msgs/ZoneShape _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::Zone :md5sum-) "5040c20424776948eebc0958029800d6")
(setf (get agv_msgs::Zone :datatype-) "agv_msgs/Zone")
(setf (get agv_msgs::Zone :definition-)
      "agv_msgs/ZoneInfo info
agv_msgs/ZoneShape shape 
================================================================================
MSG: agv_msgs/ZoneInfo
agv_msgs/ID id
string group
string name
std_msgs/ColorRGBA color
agv_msgs/KeyValue[] properties
bool visible
time creation_time
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: agv_msgs/KeyValue
string key
string value
================================================================================
MSG: agv_msgs/ZoneShape
string frame_id
geometry_msgs/Point32[] points
float32 radius

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



(provide :agv_msgs/Zone "5040c20424776948eebc0958029800d6")


