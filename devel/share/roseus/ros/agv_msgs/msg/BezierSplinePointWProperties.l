;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::BezierSplinePointWProperties)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'BezierSplinePointWProperties (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BEZIERSPLINEPOINTWPROPERTIES")
  (make-package "AGV_MSGS::BEZIERSPLINEPOINTWPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude BezierSplinePointWProperties.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::BezierSplinePointWProperties
  :super ros::object
  :slots (_header _coord _cp0 _cp1 _drive_param ))

(defmethod agv_msgs::BezierSplinePointWProperties
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:coord __coord) (instance geometry_msgs::Point :init))
    ((:cp0 __cp0) (instance geometry_msgs::Point :init))
    ((:cp1 __cp1) (instance geometry_msgs::Point :init))
    ((:drive_param __drive_param) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _coord __coord)
   (setq _cp0 __cp0)
   (setq _cp1 __cp1)
   (setq _drive_param __drive_param)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:coord
   (&rest __coord)
   (if (keywordp (car __coord))
       (send* _coord __coord)
     (progn
       (if __coord (setq _coord (car __coord)))
       _coord)))
  (:cp0
   (&rest __cp0)
   (if (keywordp (car __cp0))
       (send* _cp0 __cp0)
     (progn
       (if __cp0 (setq _cp0 (car __cp0)))
       _cp0)))
  (:cp1
   (&rest __cp1)
   (if (keywordp (car __cp1))
       (send* _cp1 __cp1)
     (progn
       (if __cp1 (setq _cp1 (car __cp1)))
       _cp1)))
  (:drive_param
   (&rest __drive_param)
   (if (keywordp (car __drive_param))
       (send* _drive_param __drive_param)
     (progn
       (if __drive_param (setq _drive_param (car __drive_param)))
       _drive_param)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _coord
    (send _coord :serialization-length)
    ;; geometry_msgs/Point _cp0
    (send _cp0 :serialization-length)
    ;; geometry_msgs/Point _cp1
    (send _cp1 :serialization-length)
    ;; agv_msgs/SplineDriveParam[] _drive_param
    (apply #'+ (send-all _drive_param :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _coord
       (send _coord :serialize s)
     ;; geometry_msgs/Point _cp0
       (send _cp0 :serialize s)
     ;; geometry_msgs/Point _cp1
       (send _cp1 :serialize s)
     ;; agv_msgs/SplineDriveParam[] _drive_param
     (write-long (length _drive_param) s)
     (dolist (elem _drive_param)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _coord
     (send _coord :deserialize buf ptr-) (incf ptr- (send _coord :serialization-length))
   ;; geometry_msgs/Point _cp0
     (send _cp0 :deserialize buf ptr-) (incf ptr- (send _cp0 :serialization-length))
   ;; geometry_msgs/Point _cp1
     (send _cp1 :deserialize buf ptr-) (incf ptr- (send _cp1 :serialization-length))
   ;; agv_msgs/SplineDriveParam[] _drive_param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drive_param (let (r) (dotimes (i n) (push (instance agv_msgs::SplineDriveParam :init) r)) r))
     (dolist (elem- _drive_param)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::BezierSplinePointWProperties :md5sum-) "0cdbfbe79a6088558695ff1f7bb13843")
(setf (get agv_msgs::BezierSplinePointWProperties :datatype-) "agv_msgs/BezierSplinePointWProperties")
(setf (get agv_msgs::BezierSplinePointWProperties :definition-)
      "Header header
geometry_msgs/Point coord
geometry_msgs/Point cp0
geometry_msgs/Point cp1
agv_msgs/SplineDriveParam[] drive_param
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



(provide :agv_msgs/BezierSplinePointWProperties "0cdbfbe79a6088558695ff1f7bb13843")


