;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavigationStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavigationStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVIGATIONSTATUS")
  (make-package "AGV_MSGS::NAVIGATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(shadow '*UNKNOWN* (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(defconstant agv_msgs::NavigationStatus::*UNKNOWN* 0)
(intern "*NAVIGATION*" (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION* (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(defconstant agv_msgs::NavigationStatus::*NAVIGATION* 1)
(intern "*RALLY_POINT*" (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(shadow '*RALLY_POINT* (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(defconstant agv_msgs::NavigationStatus::*RALLY_POINT* 2)
(intern "*RECORDER*" (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(shadow '*RECORDER* (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(defconstant agv_msgs::NavigationStatus::*RECORDER* 3)
(intern "*START_ITERATION*" (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(shadow '*START_ITERATION* (find-package "AGV_MSGS::NAVIGATIONSTATUS"))
(defconstant agv_msgs::NavigationStatus::*START_ITERATION* 1)

(defun agv_msgs::NavigationStatus-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::NavigationStatus::*UNKNOWN*)
        ((= const 1) 'agv_msgs::NavigationStatus::*NAVIGATION*)
        ((= const 2) 'agv_msgs::NavigationStatus::*RALLY_POINT*)
        ((= const 3) 'agv_msgs::NavigationStatus::*RECORDER*)
        ((= const 1) 'agv_msgs::NavigationStatus::*START_ITERATION*)
        (t nil)))

(defclass agv_msgs::NavigationStatus
  :super ros::object
  :slots (_header _path_id _current_waypoint_id _active _paused _mode _config _loop_iteration ))

(defmethod agv_msgs::NavigationStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path_id __path_id) (instance agv_msgs::ID :init))
    ((:current_waypoint_id __current_waypoint_id) (instance agv_msgs::ID :init))
    ((:active __active) nil)
    ((:paused __paused) nil)
    ((:mode __mode) 0)
    ((:config __config) (instance agv_msgs::NavigationConfig :init))
    ((:loop_iteration __loop_iteration) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _path_id __path_id)
   (setq _current_waypoint_id __current_waypoint_id)
   (setq _active __active)
   (setq _paused __paused)
   (setq _mode (round __mode))
   (setq _config __config)
   (setq _loop_iteration (round __loop_iteration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path_id
   (&rest __path_id)
   (if (keywordp (car __path_id))
       (send* _path_id __path_id)
     (progn
       (if __path_id (setq _path_id (car __path_id)))
       _path_id)))
  (:current_waypoint_id
   (&rest __current_waypoint_id)
   (if (keywordp (car __current_waypoint_id))
       (send* _current_waypoint_id __current_waypoint_id)
     (progn
       (if __current_waypoint_id (setq _current_waypoint_id (car __current_waypoint_id)))
       _current_waypoint_id)))
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:paused
   (&optional (__paused :null))
   (if (not (eq __paused :null)) (setq _paused __paused)) _paused)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:loop_iteration
   (&optional __loop_iteration)
   (if __loop_iteration (setq _loop_iteration __loop_iteration)) _loop_iteration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/ID _path_id
    (send _path_id :serialization-length)
    ;; agv_msgs/ID _current_waypoint_id
    (send _current_waypoint_id :serialization-length)
    ;; bool _active
    1
    ;; bool _paused
    1
    ;; uint8 _mode
    1
    ;; agv_msgs/NavigationConfig _config
    (send _config :serialization-length)
    ;; uint16 _loop_iteration
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/ID _path_id
       (send _path_id :serialize s)
     ;; agv_msgs/ID _current_waypoint_id
       (send _current_waypoint_id :serialize s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; bool _paused
       (if _paused (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; agv_msgs/NavigationConfig _config
       (send _config :serialize s)
     ;; uint16 _loop_iteration
       (write-word _loop_iteration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/ID _path_id
     (send _path_id :deserialize buf ptr-) (incf ptr- (send _path_id :serialization-length))
   ;; agv_msgs/ID _current_waypoint_id
     (send _current_waypoint_id :deserialize buf ptr-) (incf ptr- (send _current_waypoint_id :serialization-length))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _paused
     (setq _paused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; agv_msgs/NavigationConfig _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;; uint16 _loop_iteration
     (setq _loop_iteration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::NavigationStatus :md5sum-) "a149a87a3a79c58017a11d4e6e8cb71c")
(setf (get agv_msgs::NavigationStatus :datatype-) "agv_msgs/NavigationStatus")
(setf (get agv_msgs::NavigationStatus :definition-)
      "Header header
agv_msgs/ID path_id
agv_msgs/ID current_waypoint_id
bool active
bool paused

uint8 mode
uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 RALLY_POINT = 2
uint8 RECORDER = 3

agv_msgs/NavigationConfig config
uint16 loop_iteration
uint8 START_ITERATION = 1
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
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/NavigationConfig
uint8 direction
uint8 DIR_FORWARD=0
uint8 DIR_CLOCKWISE=0
uint8 DIR_REVERSE=1
uint8 DIR_COUNTERCLOCKWISE=1

uint8 repeat_mode
uint8 REPEAT_NONE=0
uint8 REPEAT_CIRCULAR=1
uint8 REPEAT_DOUBLE_BACK=2

uint16 no_of_loops
uint8 INFINITE_LOOPS = 0
uint8 SINGLE_EXECUTION = 1
")



(provide :agv_msgs/NavigationStatus "a149a87a3a79c58017a11d4e6e8cb71c")


