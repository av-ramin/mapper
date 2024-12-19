;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::HumanPoseArray)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'HumanPoseArray (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::HUMANPOSEARRAY")
  (make-package "AGV_MSGS::HUMANPOSEARRAY"))

(in-package "ROS")
;;//! \htmlinclude HumanPoseArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::HumanPoseArray
  :super ros::object
  :slots (_header _humans ))

(defmethod agv_msgs::HumanPoseArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:humans __humans) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _humans __humans)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:humans
   (&rest __humans)
   (if (keywordp (car __humans))
       (send* _humans __humans)
     (progn
       (if __humans (setq _humans (car __humans)))
       _humans)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/HumanPose[] _humans
    (apply #'+ (send-all _humans :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/HumanPose[] _humans
     (write-long (length _humans) s)
     (dolist (elem _humans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/HumanPose[] _humans
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _humans (let (r) (dotimes (i n) (push (instance agv_msgs::HumanPose :init) r)) r))
     (dolist (elem- _humans)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::HumanPoseArray :md5sum-) "e95557dece6aad3ab24d149c6d205a85")
(setf (get agv_msgs::HumanPoseArray :datatype-) "agv_msgs/HumanPoseArray")
(setf (get agv_msgs::HumanPoseArray :definition-)
      "Header header
HumanPose[] humans
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
MSG: agv_msgs/HumanPose
geometry_msgs/Pose2D[] pose_points
float64 score
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :agv_msgs/HumanPoseArray "e95557dece6aad3ab24d149c6d205a85")


