;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Mission)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Mission (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::MISSION")
  (make-package "AGV_MSGS::MISSION"))

(in-package "ROS")
;;//! \htmlinclude Mission.msg.html


(defclass agv_msgs::Mission
  :super ros::object
  :slots (_info _profile ))

(defmethod agv_msgs::Mission
  (:init
   (&key
    ((:info __info) (instance agv_msgs::MissionInfo :init))
    ((:profile __profile) (instance agv_msgs::MissionProfile :init))
    )
   (send-super :init)
   (setq _info __info)
   (setq _profile __profile)
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:profile
   (&rest __profile)
   (if (keywordp (car __profile))
       (send* _profile __profile)
     (progn
       (if __profile (setq _profile (car __profile)))
       _profile)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/MissionInfo _info
    (send _info :serialization-length)
    ;; agv_msgs/MissionProfile _profile
    (send _profile :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/MissionInfo _info
       (send _info :serialize s)
     ;; agv_msgs/MissionProfile _profile
       (send _profile :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/MissionInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; agv_msgs/MissionProfile _profile
     (send _profile :deserialize buf ptr-) (incf ptr- (send _profile :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::Mission :md5sum-) "fdb503fbfee60173009aba68eb8b2b65")
(setf (get agv_msgs::Mission :datatype-) "agv_msgs/Mission")
(setf (get agv_msgs::Mission :definition-)
      "agv_msgs/MissionInfo info
agv_msgs/MissionProfile profile
================================================================================
MSG: agv_msgs/MissionInfo
  agv_msgs/ID id
  string name
  string description
  string group
  time creation_time
  time modification_time
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/MissionProfile
agv_msgs/ID path_id
agv_msgs/NavigationConfig config
agv_msgs/ID[] behaviors
agv_msgs/ID[] zones
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



(provide :agv_msgs/Mission "fdb503fbfee60173009aba68eb8b2b65")


