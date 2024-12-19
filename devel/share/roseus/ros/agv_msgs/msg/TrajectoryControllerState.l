;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::TrajectoryControllerState)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'TrajectoryControllerState (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE")
  (make-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ST_IDLE*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_IDLE* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_IDLE* 0)
(intern "*ST_START*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_START* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_START* 1)
(intern "*ST_OK*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_OK* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_OK* 2)
(intern "*ST_END*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_END* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_END* 3)
(intern "*ST_TRACKING_ERROR_HIGH*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_TRACKING_ERROR_HIGH* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_TRACKING_ERROR_HIGH* 4)
(intern "*ST_LATERAL_ERROR_HIGH*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_LATERAL_ERROR_HIGH* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_LATERAL_ERROR_HIGH* 5)
(intern "*ST_HEADING_ERROR_HIGH*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_HEADING_ERROR_HIGH* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_HEADING_ERROR_HIGH* 6)
(intern "*ST_ERROR*" (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(shadow '*ST_ERROR* (find-package "AGV_MSGS::TRAJECTORYCONTROLLERSTATE"))
(defconstant agv_msgs::TrajectoryControllerState::*ST_ERROR* 7)

(defun agv_msgs::TrajectoryControllerState-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::TrajectoryControllerState::*ST_IDLE*)
        ((= const 1) 'agv_msgs::TrajectoryControllerState::*ST_START*)
        ((= const 2) 'agv_msgs::TrajectoryControllerState::*ST_OK*)
        ((= const 3) 'agv_msgs::TrajectoryControllerState::*ST_END*)
        ((= const 4) 'agv_msgs::TrajectoryControllerState::*ST_TRACKING_ERROR_HIGH*)
        ((= const 5) 'agv_msgs::TrajectoryControllerState::*ST_LATERAL_ERROR_HIGH*)
        ((= const 6) 'agv_msgs::TrajectoryControllerState::*ST_HEADING_ERROR_HIGH*)
        ((= const 7) 'agv_msgs::TrajectoryControllerState::*ST_ERROR*)
        (t nil)))

(defclass agv_msgs::TrajectoryControllerState
  :super ros::object
  :slots (_state _lateral_error _heading_error _predicted_lateral_error _predicted_heading_error _travelled_trajectory_ratio _stopping_position_on_trajectory _target_centripetal_acceleration _actual_centripetal_acceleration _trajectory_centripetal_acceleration _trajectory_header _closest_point_header _closest_point_offset _stopping_point_header _stopping_point_offset ))

(defmethod agv_msgs::TrajectoryControllerState
  (:init
   (&key
    ((:state __state) 0)
    ((:lateral_error __lateral_error) 0.0)
    ((:heading_error __heading_error) 0.0)
    ((:predicted_lateral_error __predicted_lateral_error) 0.0)
    ((:predicted_heading_error __predicted_heading_error) 0.0)
    ((:travelled_trajectory_ratio __travelled_trajectory_ratio) 0.0)
    ((:stopping_position_on_trajectory __stopping_position_on_trajectory) 0.0)
    ((:target_centripetal_acceleration __target_centripetal_acceleration) 0.0)
    ((:actual_centripetal_acceleration __actual_centripetal_acceleration) 0.0)
    ((:trajectory_centripetal_acceleration __trajectory_centripetal_acceleration) 0.0)
    ((:trajectory_header __trajectory_header) (instance std_msgs::Header :init))
    ((:closest_point_header __closest_point_header) (instance std_msgs::Header :init))
    ((:closest_point_offset __closest_point_offset) 0.0)
    ((:stopping_point_header __stopping_point_header) (instance std_msgs::Header :init))
    ((:stopping_point_offset __stopping_point_offset) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _lateral_error (float __lateral_error))
   (setq _heading_error (float __heading_error))
   (setq _predicted_lateral_error (float __predicted_lateral_error))
   (setq _predicted_heading_error (float __predicted_heading_error))
   (setq _travelled_trajectory_ratio (float __travelled_trajectory_ratio))
   (setq _stopping_position_on_trajectory (float __stopping_position_on_trajectory))
   (setq _target_centripetal_acceleration (float __target_centripetal_acceleration))
   (setq _actual_centripetal_acceleration (float __actual_centripetal_acceleration))
   (setq _trajectory_centripetal_acceleration (float __trajectory_centripetal_acceleration))
   (setq _trajectory_header __trajectory_header)
   (setq _closest_point_header __closest_point_header)
   (setq _closest_point_offset (float __closest_point_offset))
   (setq _stopping_point_header __stopping_point_header)
   (setq _stopping_point_offset (float __stopping_point_offset))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:lateral_error
   (&optional __lateral_error)
   (if __lateral_error (setq _lateral_error __lateral_error)) _lateral_error)
  (:heading_error
   (&optional __heading_error)
   (if __heading_error (setq _heading_error __heading_error)) _heading_error)
  (:predicted_lateral_error
   (&optional __predicted_lateral_error)
   (if __predicted_lateral_error (setq _predicted_lateral_error __predicted_lateral_error)) _predicted_lateral_error)
  (:predicted_heading_error
   (&optional __predicted_heading_error)
   (if __predicted_heading_error (setq _predicted_heading_error __predicted_heading_error)) _predicted_heading_error)
  (:travelled_trajectory_ratio
   (&optional __travelled_trajectory_ratio)
   (if __travelled_trajectory_ratio (setq _travelled_trajectory_ratio __travelled_trajectory_ratio)) _travelled_trajectory_ratio)
  (:stopping_position_on_trajectory
   (&optional __stopping_position_on_trajectory)
   (if __stopping_position_on_trajectory (setq _stopping_position_on_trajectory __stopping_position_on_trajectory)) _stopping_position_on_trajectory)
  (:target_centripetal_acceleration
   (&optional __target_centripetal_acceleration)
   (if __target_centripetal_acceleration (setq _target_centripetal_acceleration __target_centripetal_acceleration)) _target_centripetal_acceleration)
  (:actual_centripetal_acceleration
   (&optional __actual_centripetal_acceleration)
   (if __actual_centripetal_acceleration (setq _actual_centripetal_acceleration __actual_centripetal_acceleration)) _actual_centripetal_acceleration)
  (:trajectory_centripetal_acceleration
   (&optional __trajectory_centripetal_acceleration)
   (if __trajectory_centripetal_acceleration (setq _trajectory_centripetal_acceleration __trajectory_centripetal_acceleration)) _trajectory_centripetal_acceleration)
  (:trajectory_header
   (&rest __trajectory_header)
   (if (keywordp (car __trajectory_header))
       (send* _trajectory_header __trajectory_header)
     (progn
       (if __trajectory_header (setq _trajectory_header (car __trajectory_header)))
       _trajectory_header)))
  (:closest_point_header
   (&rest __closest_point_header)
   (if (keywordp (car __closest_point_header))
       (send* _closest_point_header __closest_point_header)
     (progn
       (if __closest_point_header (setq _closest_point_header (car __closest_point_header)))
       _closest_point_header)))
  (:closest_point_offset
   (&optional __closest_point_offset)
   (if __closest_point_offset (setq _closest_point_offset __closest_point_offset)) _closest_point_offset)
  (:stopping_point_header
   (&rest __stopping_point_header)
   (if (keywordp (car __stopping_point_header))
       (send* _stopping_point_header __stopping_point_header)
     (progn
       (if __stopping_point_header (setq _stopping_point_header (car __stopping_point_header)))
       _stopping_point_header)))
  (:stopping_point_offset
   (&optional __stopping_point_offset)
   (if __stopping_point_offset (setq _stopping_point_offset __stopping_point_offset)) _stopping_point_offset)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; float64 _lateral_error
    8
    ;; float64 _heading_error
    8
    ;; float64 _predicted_lateral_error
    8
    ;; float64 _predicted_heading_error
    8
    ;; float64 _travelled_trajectory_ratio
    8
    ;; float64 _stopping_position_on_trajectory
    8
    ;; float64 _target_centripetal_acceleration
    8
    ;; float64 _actual_centripetal_acceleration
    8
    ;; float64 _trajectory_centripetal_acceleration
    8
    ;; std_msgs/Header _trajectory_header
    (send _trajectory_header :serialization-length)
    ;; std_msgs/Header _closest_point_header
    (send _closest_point_header :serialization-length)
    ;; float64 _closest_point_offset
    8
    ;; std_msgs/Header _stopping_point_header
    (send _stopping_point_header :serialization-length)
    ;; float64 _stopping_point_offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; float64 _lateral_error
       (sys::poke _lateral_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_error
       (sys::poke _heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predicted_lateral_error
       (sys::poke _predicted_lateral_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _predicted_heading_error
       (sys::poke _predicted_heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _travelled_trajectory_ratio
       (sys::poke _travelled_trajectory_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stopping_position_on_trajectory
       (sys::poke _stopping_position_on_trajectory (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_centripetal_acceleration
       (sys::poke _target_centripetal_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _actual_centripetal_acceleration
       (sys::poke _actual_centripetal_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _trajectory_centripetal_acceleration
       (sys::poke _trajectory_centripetal_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Header _trajectory_header
       (send _trajectory_header :serialize s)
     ;; std_msgs/Header _closest_point_header
       (send _closest_point_header :serialize s)
     ;; float64 _closest_point_offset
       (sys::poke _closest_point_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Header _stopping_point_header
       (send _stopping_point_header :serialize s)
     ;; float64 _stopping_point_offset
       (sys::poke _stopping_point_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _lateral_error
     (setq _lateral_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_error
     (setq _heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predicted_lateral_error
     (setq _predicted_lateral_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _predicted_heading_error
     (setq _predicted_heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _travelled_trajectory_ratio
     (setq _travelled_trajectory_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stopping_position_on_trajectory
     (setq _stopping_position_on_trajectory (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_centripetal_acceleration
     (setq _target_centripetal_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _actual_centripetal_acceleration
     (setq _actual_centripetal_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _trajectory_centripetal_acceleration
     (setq _trajectory_centripetal_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/Header _trajectory_header
     (send _trajectory_header :deserialize buf ptr-) (incf ptr- (send _trajectory_header :serialization-length))
   ;; std_msgs/Header _closest_point_header
     (send _closest_point_header :deserialize buf ptr-) (incf ptr- (send _closest_point_header :serialization-length))
   ;; float64 _closest_point_offset
     (setq _closest_point_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/Header _stopping_point_header
     (send _stopping_point_header :deserialize buf ptr-) (incf ptr- (send _stopping_point_header :serialization-length))
   ;; float64 _stopping_point_offset
     (setq _stopping_point_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::TrajectoryControllerState :md5sum-) "350099b8a58862f1bbb2702387d2460d")
(setf (get agv_msgs::TrajectoryControllerState :datatype-) "agv_msgs/TrajectoryControllerState")
(setf (get agv_msgs::TrajectoryControllerState :definition-)
      "uint8 ST_IDLE = 0
uint8 ST_START = 1 
uint8 ST_OK = 2
uint8 ST_END = 3
uint8 ST_TRACKING_ERROR_HIGH = 4
uint8 ST_LATERAL_ERROR_HIGH = 5
uint8 ST_HEADING_ERROR_HIGH = 6
uint8 ST_ERROR = 7

uint8 state 
float64 lateral_error
float64 heading_error
float64 predicted_lateral_error
float64 predicted_heading_error
float64 travelled_trajectory_ratio
float64 stopping_position_on_trajectory
float64 target_centripetal_acceleration
float64 actual_centripetal_acceleration
float64 trajectory_centripetal_acceleration

Header trajectory_header
Header closest_point_header
float64 closest_point_offset
Header stopping_point_header
float64 stopping_point_offset
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

")



(provide :agv_msgs/TrajectoryControllerState "350099b8a58862f1bbb2702387d2460d")


