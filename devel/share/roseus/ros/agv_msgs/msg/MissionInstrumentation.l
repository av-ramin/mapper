;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::MissionInstrumentation)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'MissionInstrumentation (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::MISSIONINSTRUMENTATION")
  (make-package "AGV_MSGS::MISSIONINSTRUMENTATION"))

(in-package "ROS")
;;//! \htmlinclude MissionInstrumentation.msg.html


(defclass agv_msgs::MissionInstrumentation
  :super ros::object
  :slots (_elapsed_time _traversed_distance ))

(defmethod agv_msgs::MissionInstrumentation
  (:init
   (&key
    ((:elapsed_time __elapsed_time) (instance ros::time :init))
    ((:traversed_distance __traversed_distance) 0.0)
    )
   (send-super :init)
   (setq _elapsed_time __elapsed_time)
   (setq _traversed_distance (float __traversed_distance))
   self)
  (:elapsed_time
   (&optional __elapsed_time)
   (if __elapsed_time (setq _elapsed_time __elapsed_time)) _elapsed_time)
  (:traversed_distance
   (&optional __traversed_distance)
   (if __traversed_distance (setq _traversed_distance __traversed_distance)) _traversed_distance)
  (:serialization-length
   ()
   (+
    ;; duration _elapsed_time
    8
    ;; float64 _traversed_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _elapsed_time
       (write-long (send _elapsed_time :sec) s) (write-long (send _elapsed_time :nsec) s)
     ;; float64 _traversed_distance
       (sys::poke _traversed_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _elapsed_time
     (send _elapsed_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _elapsed_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _traversed_distance
     (setq _traversed_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::MissionInstrumentation :md5sum-) "a0f51d602a0058a2f553df8c1db261b2")
(setf (get agv_msgs::MissionInstrumentation :datatype-) "agv_msgs/MissionInstrumentation")
(setf (get agv_msgs::MissionInstrumentation :definition-)
      "duration elapsed_time
float64 traversed_distance

")



(provide :agv_msgs/MissionInstrumentation "a0f51d602a0058a2f553df8c1db261b2")


