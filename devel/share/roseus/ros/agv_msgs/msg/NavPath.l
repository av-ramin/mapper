;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavPath)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavPath (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVPATH")
  (make-package "AGV_MSGS::NAVPATH"))

(in-package "ROS")
;;//! \htmlinclude NavPath.msg.html


(defclass agv_msgs::NavPath
  :super ros::object
  :slots (_waypoints _info ))

(defmethod agv_msgs::NavPath
  (:init
   (&key
    ((:waypoints __waypoints) ())
    ((:info __info) (instance agv_msgs::NavPathInfo :init))
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   (setq _info __info)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; agv_msgs/NavPathInfo _info
    (send _info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; agv_msgs/NavPathInfo _info
       (send _info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance agv_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_msgs/NavPathInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::NavPath :md5sum-) "6ab59b8885703109fbcdb3fa77299580")
(setf (get agv_msgs::NavPath :datatype-) "agv_msgs/NavPath")
(setf (get agv_msgs::NavPath :definition-)
      "agv_msgs/Waypoint[] waypoints
agv_msgs/NavPathInfo info
================================================================================
MSG: agv_msgs/Waypoint
Header header
agv_msgs/NavPose pose
agv_msgs/WaypointStatus status

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
MSG: agv_msgs/NavPose
float64 x
float64 y
float64 z
float64 theta

uint8 type
uint8 UNKNOWN=0

================================================================================
MSG: agv_msgs/WaypointStatus
agv_msgs/ID goal_id
uint8 state # contins actionlib::SimpleClientGoalState state
float32 radius
bool road
bool intersection
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/NavPathInfo
agv_msgs/ID id
time creation_time

uint8 type
uint8 UNKNOWN=0
uint8 MANUAL=1
uint8 RECORDED=2
uint8 IMPORTED=3

uint8 uncertainty
uint8 OK=0
uint8 UNCERTAIN=1

string name
std_msgs/ColorRGBA color
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :agv_msgs/NavPath "6ab59b8885703109fbcdb3fa77299580")


