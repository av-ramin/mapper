;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NDTMap)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NDTMap (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NDTMAP")
  (make-package "AGV_MSGS::NDTMAP"))

(in-package "ROS")
;;//! \htmlinclude NDTMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::NDTMap
  :super ros::object
  :slots (_header _cloud_bounds_min _cloud_bounds_max _grid_bounds_min _grid_bounds_max _grid_resolution _cells ))

(defmethod agv_msgs::NDTMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cloud_bounds_min __cloud_bounds_min) (instance geometry_msgs::Vector3 :init))
    ((:cloud_bounds_max __cloud_bounds_max) (instance geometry_msgs::Vector3 :init))
    ((:grid_bounds_min __grid_bounds_min) (instance geometry_msgs::Vector3 :init))
    ((:grid_bounds_max __grid_bounds_max) (instance geometry_msgs::Vector3 :init))
    ((:grid_resolution __grid_resolution) (instance geometry_msgs::Vector3 :init))
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cloud_bounds_min __cloud_bounds_min)
   (setq _cloud_bounds_max __cloud_bounds_max)
   (setq _grid_bounds_min __grid_bounds_min)
   (setq _grid_bounds_max __grid_bounds_max)
   (setq _grid_resolution __grid_resolution)
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cloud_bounds_min
   (&rest __cloud_bounds_min)
   (if (keywordp (car __cloud_bounds_min))
       (send* _cloud_bounds_min __cloud_bounds_min)
     (progn
       (if __cloud_bounds_min (setq _cloud_bounds_min (car __cloud_bounds_min)))
       _cloud_bounds_min)))
  (:cloud_bounds_max
   (&rest __cloud_bounds_max)
   (if (keywordp (car __cloud_bounds_max))
       (send* _cloud_bounds_max __cloud_bounds_max)
     (progn
       (if __cloud_bounds_max (setq _cloud_bounds_max (car __cloud_bounds_max)))
       _cloud_bounds_max)))
  (:grid_bounds_min
   (&rest __grid_bounds_min)
   (if (keywordp (car __grid_bounds_min))
       (send* _grid_bounds_min __grid_bounds_min)
     (progn
       (if __grid_bounds_min (setq _grid_bounds_min (car __grid_bounds_min)))
       _grid_bounds_min)))
  (:grid_bounds_max
   (&rest __grid_bounds_max)
   (if (keywordp (car __grid_bounds_max))
       (send* _grid_bounds_max __grid_bounds_max)
     (progn
       (if __grid_bounds_max (setq _grid_bounds_max (car __grid_bounds_max)))
       _grid_bounds_max)))
  (:grid_resolution
   (&rest __grid_resolution)
   (if (keywordp (car __grid_resolution))
       (send* _grid_resolution __grid_resolution)
     (progn
       (if __grid_resolution (setq _grid_resolution (car __grid_resolution)))
       _grid_resolution)))
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _cloud_bounds_min
    (send _cloud_bounds_min :serialization-length)
    ;; geometry_msgs/Vector3 _cloud_bounds_max
    (send _cloud_bounds_max :serialization-length)
    ;; geometry_msgs/Vector3 _grid_bounds_min
    (send _grid_bounds_min :serialization-length)
    ;; geometry_msgs/Vector3 _grid_bounds_max
    (send _grid_bounds_max :serialization-length)
    ;; geometry_msgs/Vector3 _grid_resolution
    (send _grid_resolution :serialization-length)
    ;; agv_msgs/NDTCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _cloud_bounds_min
       (send _cloud_bounds_min :serialize s)
     ;; geometry_msgs/Vector3 _cloud_bounds_max
       (send _cloud_bounds_max :serialize s)
     ;; geometry_msgs/Vector3 _grid_bounds_min
       (send _grid_bounds_min :serialize s)
     ;; geometry_msgs/Vector3 _grid_bounds_max
       (send _grid_bounds_max :serialize s)
     ;; geometry_msgs/Vector3 _grid_resolution
       (send _grid_resolution :serialize s)
     ;; agv_msgs/NDTCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _cloud_bounds_min
     (send _cloud_bounds_min :deserialize buf ptr-) (incf ptr- (send _cloud_bounds_min :serialization-length))
   ;; geometry_msgs/Vector3 _cloud_bounds_max
     (send _cloud_bounds_max :deserialize buf ptr-) (incf ptr- (send _cloud_bounds_max :serialization-length))
   ;; geometry_msgs/Vector3 _grid_bounds_min
     (send _grid_bounds_min :deserialize buf ptr-) (incf ptr- (send _grid_bounds_min :serialization-length))
   ;; geometry_msgs/Vector3 _grid_bounds_max
     (send _grid_bounds_max :deserialize buf ptr-) (incf ptr- (send _grid_bounds_max :serialization-length))
   ;; geometry_msgs/Vector3 _grid_resolution
     (send _grid_resolution :deserialize buf ptr-) (incf ptr- (send _grid_resolution :serialization-length))
   ;; agv_msgs/NDTCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance agv_msgs::NDTCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::NDTMap :md5sum-) "6d146211345303955e78e8c67700a3b2")
(setf (get agv_msgs::NDTMap :datatype-) "agv_msgs/NDTMap")
(setf (get agv_msgs::NDTMap :definition-)
      "Header                  header

geometry_msgs/Vector3   cloud_bounds_min
geometry_msgs/Vector3   cloud_bounds_max

geometry_msgs/Vector3   grid_bounds_min
geometry_msgs/Vector3   grid_bounds_max

geometry_msgs/Vector3   grid_resolution

NDTCell[]               cells

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: agv_msgs/NDTCell
geometry_msgs/Point  centroid
float64[9]           covariance
uint64               num_points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :agv_msgs/NDTMap "6d146211345303955e78e8c67700a3b2")


