;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::OrientationStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'OrientationStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ORIENTATIONSTAMPED")
  (make-package "AGV_MSGS::ORIENTATIONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude OrientationStamped.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::OrientationStamped
  :super ros::object
  :slots (_header _quaternion _rpy ))

(defmethod agv_msgs::OrientationStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _quaternion __quaternion)
   (setq _rpy __rpy)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::OrientationStamped :md5sum-) "e7e2d5562f8199f6889d03f38b188837")
(setf (get agv_msgs::OrientationStamped :datatype-) "agv_msgs/OrientationStamped")
(setf (get agv_msgs::OrientationStamped :definition-)
      "Header                    header
geometry_msgs/Quaternion  quaternion 
geometry_msgs/Vector3     rpy
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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
")



(provide :agv_msgs/OrientationStamped "e7e2d5562f8199f6889d03f38b188837")


