;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::HumanPoseControlStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'HumanPoseControlStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED")
  (make-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude HumanPoseControlStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POSE_LOCK_IDLE*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_LOCK_IDLE* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_LOCK_IDLE* 0)
(intern "*POSE_LOCK_START*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_LOCK_START* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_LOCK_START* 1)
(intern "*POSE_LOCK*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_LOCK* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_LOCK* 2)
(intern "*POSE_LEFT*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_LEFT* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_LEFT* 0)
(intern "*POSE_RIGHT*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_RIGHT* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_RIGHT* 1)
(intern "*POSE_START*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_START* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_START* 2)
(intern "*POSE_REVERSE*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_REVERSE* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_REVERSE* 3)
(intern "*POSE_STOP*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_STOP* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_STOP* 4)
(intern "*POSE_ELSE*" (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(shadow '*POSE_ELSE* (find-package "AGV_MSGS::HUMANPOSECONTROLSTAMPED"))
(defconstant agv_msgs::HumanPoseControlStamped::*POSE_ELSE* 5)

(defun agv_msgs::HumanPoseControlStamped-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::HumanPoseControlStamped::*POSE_LOCK_IDLE*)
        ((= const 1) 'agv_msgs::HumanPoseControlStamped::*POSE_LOCK_START*)
        ((= const 2) 'agv_msgs::HumanPoseControlStamped::*POSE_LOCK*)
        ((= const 0) 'agv_msgs::HumanPoseControlStamped::*POSE_LEFT*)
        ((= const 1) 'agv_msgs::HumanPoseControlStamped::*POSE_RIGHT*)
        ((= const 2) 'agv_msgs::HumanPoseControlStamped::*POSE_START*)
        ((= const 3) 'agv_msgs::HumanPoseControlStamped::*POSE_REVERSE*)
        ((= const 4) 'agv_msgs::HumanPoseControlStamped::*POSE_STOP*)
        ((= const 5) 'agv_msgs::HumanPoseControlStamped::*POSE_ELSE*)
        (t nil)))

(defclass agv_msgs::HumanPoseControlStamped
  :super ros::object
  :slots (_header _status _classification _pose ))

(defmethod agv_msgs::HumanPoseControlStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:classification __classification) 0)
    ((:pose __pose) (instance agv_msgs::HumanPose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _classification (round __classification))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _status
    1
    ;; uint8 _classification
    1
    ;; agv_msgs/HumanPose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _classification
       (write-byte _classification s)
     ;; agv_msgs/HumanPose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; agv_msgs/HumanPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::HumanPoseControlStamped :md5sum-) "e84d4a1761d7f7291a8bf764334c8d98")
(setf (get agv_msgs::HumanPoseControlStamped :datatype-) "agv_msgs/HumanPoseControlStamped")
(setf (get agv_msgs::HumanPoseControlStamped :definition-)
      "Header header

uint8 status
uint8 POSE_LOCK_IDLE = 0
uint8 POSE_LOCK_START = 1
uint8 POSE_LOCK = 2

uint8 classification
uint8 POSE_LEFT = 0
uint8 POSE_RIGHT = 1
uint8 POSE_START = 2
uint8 POSE_REVERSE = 3
uint8 POSE_STOP = 4
uint8 POSE_ELSE = 5

HumanPose pose
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



(provide :agv_msgs/HumanPoseControlStamped "e84d4a1761d7f7291a8bf764334c8d98")


