;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::HumanPose)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'HumanPose (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::HUMANPOSE")
  (make-package "AGV_MSGS::HUMANPOSE"))

(in-package "ROS")
;;//! \htmlinclude HumanPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agv_msgs::HumanPose
  :super ros::object
  :slots (_pose_points _score ))

(defmethod agv_msgs::HumanPose
  (:init
   (&key
    ((:pose_points __pose_points) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _pose_points __pose_points)
   (setq _score (float __score))
   self)
  (:pose_points
   (&rest __pose_points)
   (if (keywordp (car __pose_points))
       (send* _pose_points __pose_points)
     (progn
       (if __pose_points (setq _pose_points (car __pose_points)))
       _pose_points)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D[] _pose_points
    (apply #'+ (send-all _pose_points :serialization-length)) 4
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D[] _pose_points
     (write-long (length _pose_points) s)
     (dolist (elem _pose_points)
       (send elem :serialize s)
       )
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D[] _pose_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pose_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::HumanPose :md5sum-) "e855ff1260c66856127e8a75c6ef452d")
(setf (get agv_msgs::HumanPose :datatype-) "agv_msgs/HumanPose")
(setf (get agv_msgs::HumanPose :definition-)
      "geometry_msgs/Pose2D[] pose_points
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



(provide :agv_msgs/HumanPose "e855ff1260c66856127e8a75c6ef452d")


