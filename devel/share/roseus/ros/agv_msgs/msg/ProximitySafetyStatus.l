;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ProximitySafetyStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ProximitySafetyStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS")
  (make-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ProximitySafetyStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OK*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*OK* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*OK* 0)
(intern "*OK_BUT_TOO_SHAKY*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*OK_BUT_TOO_SHAKY* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*OK_BUT_TOO_SHAKY* 1)
(intern "*STARTING*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*STARTING* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*STARTING* 2)
(intern "*INIT*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*INIT* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*INIT* 3)
(intern "*DATA_MISSING*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*DATA_MISSING* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*DATA_MISSING* 4)
(intern "*PROXIMITY_SLOW*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*PROXIMITY_SLOW* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*PROXIMITY_SLOW* 5)
(intern "*PROXIMITY_ALERT*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*PROXIMITY_ALERT* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*PROXIMITY_ALERT* 6)
(intern "*STOP*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*STOP* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*STOP* 10)
(intern "*FORWARD*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*FORWARD* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*FORWARD* 11)
(intern "*BACKWARD*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*BACKWARD* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*BACKWARD* 12)
(intern "*EMPTY*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*EMPTY* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*EMPTY* 13)
(intern "*ALL_ZEROES*" (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(shadow '*ALL_ZEROES* (find-package "AGV_MSGS::PROXIMITYSAFETYSTATUS"))
(defconstant agv_msgs::ProximitySafetyStatus::*ALL_ZEROES* 14)

(defun agv_msgs::ProximitySafetyStatus-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::ProximitySafetyStatus::*OK*)
        ((= const 1) 'agv_msgs::ProximitySafetyStatus::*OK_BUT_TOO_SHAKY*)
        ((= const 2) 'agv_msgs::ProximitySafetyStatus::*STARTING*)
        ((= const 3) 'agv_msgs::ProximitySafetyStatus::*INIT*)
        ((= const 4) 'agv_msgs::ProximitySafetyStatus::*DATA_MISSING*)
        ((= const 5) 'agv_msgs::ProximitySafetyStatus::*PROXIMITY_SLOW*)
        ((= const 6) 'agv_msgs::ProximitySafetyStatus::*PROXIMITY_ALERT*)
        ((= const 10) 'agv_msgs::ProximitySafetyStatus::*STOP*)
        ((= const 11) 'agv_msgs::ProximitySafetyStatus::*FORWARD*)
        ((= const 12) 'agv_msgs::ProximitySafetyStatus::*BACKWARD*)
        ((= const 13) 'agv_msgs::ProximitySafetyStatus::*EMPTY*)
        ((= const 14) 'agv_msgs::ProximitySafetyStatus::*ALL_ZEROES*)
        (t nil)))

(defclass agv_msgs::ProximitySafetyStatus
  :super ros::object
  :slots (_header _data _status ))

(defmethod agv_msgs::ProximitySafetyStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (float __data))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _data
    4
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::ProximitySafetyStatus :md5sum-) "4676bf30d3543840700826c4e939d3d7")
(setf (get agv_msgs::ProximitySafetyStatus :datatype-) "agv_msgs/ProximitySafetyStatus")
(setf (get agv_msgs::ProximitySafetyStatus :definition-)
      "Header  header
float32 data

uint8 status
uint8 OK=0
uint8 OK_BUT_TOO_SHAKY=1
uint8 STARTING=2
uint8 INIT=3
uint8 DATA_MISSING=4
uint8 PROXIMITY_SLOW=5
uint8 PROXIMITY_ALERT=6
uint8 STOP=10
uint8 FORWARD=11
uint8 BACKWARD=12
uint8 EMPTY=13
uint8 ALL_ZEROES=14

# Statuses for using with proximity safety:
# 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)
# 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)
# 2 - starting up (data is time since beginning of starting)
# 3 - initializing - data is flowing (data is time since beginning of init)
# 4 - data missing (data is time since last data)
# 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)
# 6 - proximity alert (data is distance to obstacle)

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



(provide :agv_msgs/ProximitySafetyStatus "4676bf30d3543840700826c4e939d3d7")


