;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::FollowmeTagStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'FollowmeTagStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::FOLLOWMETAGSTATUS")
  (make-package "AGV_MSGS::FOLLOWMETAGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FollowmeTagStatus.msg.html


(defclass agv_msgs::FollowmeTagStatus
  :super ros::object
  :slots (_dist_to_anchor _battery_lvl _signal_quality ))

(defmethod agv_msgs::FollowmeTagStatus
  (:init
   (&key
    ((:dist_to_anchor __dist_to_anchor) 0.0)
    ((:battery_lvl __battery_lvl) 0)
    ((:signal_quality __signal_quality) 0)
    )
   (send-super :init)
   (setq _dist_to_anchor (float __dist_to_anchor))
   (setq _battery_lvl (round __battery_lvl))
   (setq _signal_quality (round __signal_quality))
   self)
  (:dist_to_anchor
   (&optional __dist_to_anchor)
   (if __dist_to_anchor (setq _dist_to_anchor __dist_to_anchor)) _dist_to_anchor)
  (:battery_lvl
   (&optional __battery_lvl)
   (if __battery_lvl (setq _battery_lvl __battery_lvl)) _battery_lvl)
  (:signal_quality
   (&optional __signal_quality)
   (if __signal_quality (setq _signal_quality __signal_quality)) _signal_quality)
  (:serialization-length
   ()
   (+
    ;; float32 _dist_to_anchor
    4
    ;; uint8 _battery_lvl
    1
    ;; uint8 _signal_quality
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dist_to_anchor
       (sys::poke _dist_to_anchor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _battery_lvl
       (write-byte _battery_lvl s)
     ;; uint8 _signal_quality
       (write-byte _signal_quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dist_to_anchor
     (setq _dist_to_anchor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _battery_lvl
     (setq _battery_lvl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _signal_quality
     (setq _signal_quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::FollowmeTagStatus :md5sum-) "13e8bc9b26611e630173d62b92a0ae8a")
(setf (get agv_msgs::FollowmeTagStatus :datatype-) "agv_msgs/FollowmeTagStatus")
(setf (get agv_msgs::FollowmeTagStatus :definition-)
      "float32 dist_to_anchor
uint8 battery_lvl
uint8 signal_quality


")



(provide :agv_msgs/FollowmeTagStatus "13e8bc9b26611e630173d62b92a0ae8a")


