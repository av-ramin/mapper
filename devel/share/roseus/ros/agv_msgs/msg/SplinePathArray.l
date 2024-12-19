;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SplinePathArray)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SplinePathArray (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SPLINEPATHARRAY")
  (make-package "AGV_MSGS::SPLINEPATHARRAY"))

(in-package "ROS")
;;//! \htmlinclude SplinePathArray.msg.html


(defclass agv_msgs::SplinePathArray
  :super ros::object
  :slots (_smooth_paths ))

(defmethod agv_msgs::SplinePathArray
  (:init
   (&key
    ((:smooth_paths __smooth_paths) ())
    )
   (send-super :init)
   (setq _smooth_paths __smooth_paths)
   self)
  (:smooth_paths
   (&rest __smooth_paths)
   (if (keywordp (car __smooth_paths))
       (send* _smooth_paths __smooth_paths)
     (progn
       (if __smooth_paths (setq _smooth_paths (car __smooth_paths)))
       _smooth_paths)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/SplinePath[] _smooth_paths
    (apply #'+ (send-all _smooth_paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/SplinePath[] _smooth_paths
     (write-long (length _smooth_paths) s)
     (dolist (elem _smooth_paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/SplinePath[] _smooth_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _smooth_paths (let (r) (dotimes (i n) (push (instance agv_msgs::SplinePath :init) r)) r))
     (dolist (elem- _smooth_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::SplinePathArray :md5sum-) "05cf4559b25a14e1afdea5a89a416603")
(setf (get agv_msgs::SplinePathArray :datatype-) "agv_msgs/SplinePathArray")
(setf (get agv_msgs::SplinePathArray :definition-)
      "agv_msgs/SplinePath[] smooth_paths
================================================================================
MSG: agv_msgs/SplinePath
Header header
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



(provide :agv_msgs/SplinePathArray "05cf4559b25a14e1afdea5a89a416603")


