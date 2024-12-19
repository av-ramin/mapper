;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::MissionProfile)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'MissionProfile (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::MISSIONPROFILE")
  (make-package "AGV_MSGS::MISSIONPROFILE"))

(in-package "ROS")
;;//! \htmlinclude MissionProfile.msg.html


(defclass agv_msgs::MissionProfile
  :super ros::object
  :slots (_path_id _config _behaviors _zones ))

(defmethod agv_msgs::MissionProfile
  (:init
   (&key
    ((:path_id __path_id) (instance agv_msgs::ID :init))
    ((:config __config) (instance agv_msgs::NavigationConfig :init))
    ((:behaviors __behaviors) ())
    ((:zones __zones) ())
    )
   (send-super :init)
   (setq _path_id __path_id)
   (setq _config __config)
   (setq _behaviors __behaviors)
   (setq _zones __zones)
   self)
  (:path_id
   (&rest __path_id)
   (if (keywordp (car __path_id))
       (send* _path_id __path_id)
     (progn
       (if __path_id (setq _path_id (car __path_id)))
       _path_id)))
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:behaviors
   (&rest __behaviors)
   (if (keywordp (car __behaviors))
       (send* _behaviors __behaviors)
     (progn
       (if __behaviors (setq _behaviors (car __behaviors)))
       _behaviors)))
  (:zones
   (&rest __zones)
   (if (keywordp (car __zones))
       (send* _zones __zones)
     (progn
       (if __zones (setq _zones (car __zones)))
       _zones)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _path_id
    (send _path_id :serialization-length)
    ;; agv_msgs/NavigationConfig _config
    (send _config :serialization-length)
    ;; agv_msgs/ID[] _behaviors
    (apply #'+ (send-all _behaviors :serialization-length)) 4
    ;; agv_msgs/ID[] _zones
    (apply #'+ (send-all _zones :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _path_id
       (send _path_id :serialize s)
     ;; agv_msgs/NavigationConfig _config
       (send _config :serialize s)
     ;; agv_msgs/ID[] _behaviors
     (write-long (length _behaviors) s)
     (dolist (elem _behaviors)
       (send elem :serialize s)
       )
     ;; agv_msgs/ID[] _zones
     (write-long (length _zones) s)
     (dolist (elem _zones)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _path_id
     (send _path_id :deserialize buf ptr-) (incf ptr- (send _path_id :serialization-length))
   ;; agv_msgs/NavigationConfig _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;; agv_msgs/ID[] _behaviors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _behaviors (let (r) (dotimes (i n) (push (instance agv_msgs::ID :init) r)) r))
     (dolist (elem- _behaviors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_msgs/ID[] _zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zones (let (r) (dotimes (i n) (push (instance agv_msgs::ID :init) r)) r))
     (dolist (elem- _zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::MissionProfile :md5sum-) "bafac555455751c88b658e71984a8344")
(setf (get agv_msgs::MissionProfile :datatype-) "agv_msgs/MissionProfile")
(setf (get agv_msgs::MissionProfile :definition-)
      "agv_msgs/ID path_id
agv_msgs/NavigationConfig config
agv_msgs/ID[] behaviors
agv_msgs/ID[] zones
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



(provide :agv_msgs/MissionProfile "bafac555455751c88b658e71984a8344")


