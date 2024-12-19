;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointArray)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointArray (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTARRAY")
  (make-package "AGV_MSGS::WAYPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointArray.msg.html


(defclass agv_msgs::WaypointArray
  :super ros::object
  :slots (_points ))

(defmethod agv_msgs::WaypointArray
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/Waypoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/Waypoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/Waypoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance agv_msgs::Waypoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::WaypointArray :md5sum-) "b892504f792016845606f79a85c2f15a")
(setf (get agv_msgs::WaypointArray :datatype-) "agv_msgs/WaypointArray")
(setf (get agv_msgs::WaypointArray :definition-)
      "agv_msgs/Waypoint[] points
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

")



(provide :agv_msgs/WaypointArray "b892504f792016845606f79a85c2f15a")


