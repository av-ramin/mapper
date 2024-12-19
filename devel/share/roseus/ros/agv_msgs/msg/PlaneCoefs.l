;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::PlaneCoefs)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'PlaneCoefs (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PLANECOEFS")
  (make-package "AGV_MSGS::PLANECOEFS"))

(in-package "ROS")
;;//! \htmlinclude PlaneCoefs.msg.html
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::PlaneCoefs
  :super ros::object
  :slots (_header _plane ))

(defmethod agv_msgs::PlaneCoefs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:plane __plane) (instance shape_msgs::Plane :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _plane __plane)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:plane
   (&rest __plane)
   (if (keywordp (car __plane))
       (send* _plane __plane)
     (progn
       (if __plane (setq _plane (car __plane)))
       _plane)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; shape_msgs/Plane _plane
    (send _plane :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; shape_msgs/Plane _plane
       (send _plane :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; shape_msgs/Plane _plane
     (send _plane :deserialize buf ptr-) (incf ptr- (send _plane :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::PlaneCoefs :md5sum-) "3c3e20d1e0ce2c692b0df82d8f7c0a1e")
(setf (get agv_msgs::PlaneCoefs :datatype-) "agv_msgs/PlaneCoefs")
(setf (get agv_msgs::PlaneCoefs :definition-)
      "Header header
shape_msgs/Plane plane
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
MSG: shape_msgs/Plane
# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

")



(provide :agv_msgs/PlaneCoefs "3c3e20d1e0ce2c692b0df82d8f7c0a1e")


