;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Waypoint)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Waypoint (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINT")
  (make-package "AGV_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::Waypoint
  :super ros::object
  :slots (_header _pose _status ))

(defmethod agv_msgs::Waypoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance agv_msgs::NavPose :init))
    ((:status __status) (instance agv_msgs::WaypointStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/NavPose _pose
    (send _pose :serialization-length)
    ;; agv_msgs/WaypointStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/NavPose _pose
       (send _pose :serialize s)
     ;; agv_msgs/WaypointStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/NavPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; agv_msgs/WaypointStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::Waypoint :md5sum-) "e11fc09e9fd5b5c4d82756a0e92bc03b")
(setf (get agv_msgs::Waypoint :datatype-) "agv_msgs/Waypoint")
(setf (get agv_msgs::Waypoint :definition-)
      "Header header
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

")



(provide :agv_msgs/Waypoint "e11fc09e9fd5b5c4d82756a0e92bc03b")


