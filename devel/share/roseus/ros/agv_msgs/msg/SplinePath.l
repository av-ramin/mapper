;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SplinePath)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SplinePath (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SPLINEPATH")
  (make-package "AGV_MSGS::SPLINEPATH"))

(in-package "ROS")
;;//! \htmlinclude SplinePath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::SplinePath
  :super ros::object
  :slots (_header _path ))

(defmethod agv_msgs::SplinePath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/BezierSplinePointWProperties[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/BezierSplinePointWProperties[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/BezierSplinePointWProperties[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance agv_msgs::BezierSplinePointWProperties :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::SplinePath :md5sum-) "80bf4fef0281111824cda232d35d94fe")
(setf (get agv_msgs::SplinePath :datatype-) "agv_msgs/SplinePath")
(setf (get agv_msgs::SplinePath :definition-)
      "Header header
agv_msgs/BezierSplinePointWProperties[] path
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
MSG: agv_msgs/BezierSplinePointWProperties
Header header
geometry_msgs/Point coord
geometry_msgs/Point cp0
geometry_msgs/Point cp1
agv_msgs/SplineDriveParam[] drive_param
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: agv_msgs/SplineDriveParam
float64 position_offset
float64 desired_v
float64 max_a
float64 incline_angle
")



(provide :agv_msgs/SplinePath "80bf4fef0281111824cda232d35d94fe")


