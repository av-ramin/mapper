;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointWithVariance)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointWithVariance (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTWITHVARIANCE")
  (make-package "AGV_MSGS::WAYPOINTWITHVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude WaypointWithVariance.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::WaypointWithVariance
  :super ros::object
  :slots (_header _pose _variance _status ))

(defmethod agv_msgs::WaypointWithVariance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance agv_msgs::NavPose :init))
    ((:variance __variance) (instance agv_msgs::NavPoseVariance :init))
    ((:status __status) (instance agv_msgs::WaypointStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _variance __variance)
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
  (:variance
   (&rest __variance)
   (if (keywordp (car __variance))
       (send* _variance __variance)
     (progn
       (if __variance (setq _variance (car __variance)))
       _variance)))
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
    ;; agv_msgs/NavPoseVariance _variance
    (send _variance :serialization-length)
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
     ;; agv_msgs/NavPoseVariance _variance
       (send _variance :serialize s)
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
   ;; agv_msgs/NavPoseVariance _variance
     (send _variance :deserialize buf ptr-) (incf ptr- (send _variance :serialization-length))
   ;; agv_msgs/WaypointStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::WaypointWithVariance :md5sum-) "8e55df1b331a1adbeb077f4d24a07d2f")
(setf (get agv_msgs::WaypointWithVariance :datatype-) "agv_msgs/WaypointWithVariance")
(setf (get agv_msgs::WaypointWithVariance :definition-)
      "Header header
agv_msgs/NavPose pose
agv_msgs/NavPoseVariance variance
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
MSG: agv_msgs/NavPoseVariance
float64 x
float64 y
float64 theta

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



(provide :agv_msgs/WaypointWithVariance "8e55df1b331a1adbeb077f4d24a07d2f")


