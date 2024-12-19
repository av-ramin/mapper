;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SplineDriveParam)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SplineDriveParam (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SPLINEDRIVEPARAM")
  (make-package "AGV_MSGS::SPLINEDRIVEPARAM"))

(in-package "ROS")
;;//! \htmlinclude SplineDriveParam.msg.html


(defclass agv_msgs::SplineDriveParam
  :super ros::object
  :slots (_position_offset _desired_v _max_a _incline_angle ))

(defmethod agv_msgs::SplineDriveParam
  (:init
   (&key
    ((:position_offset __position_offset) 0.0)
    ((:desired_v __desired_v) 0.0)
    ((:max_a __max_a) 0.0)
    ((:incline_angle __incline_angle) 0.0)
    )
   (send-super :init)
   (setq _position_offset (float __position_offset))
   (setq _desired_v (float __desired_v))
   (setq _max_a (float __max_a))
   (setq _incline_angle (float __incline_angle))
   self)
  (:position_offset
   (&optional __position_offset)
   (if __position_offset (setq _position_offset __position_offset)) _position_offset)
  (:desired_v
   (&optional __desired_v)
   (if __desired_v (setq _desired_v __desired_v)) _desired_v)
  (:max_a
   (&optional __max_a)
   (if __max_a (setq _max_a __max_a)) _max_a)
  (:incline_angle
   (&optional __incline_angle)
   (if __incline_angle (setq _incline_angle __incline_angle)) _incline_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _position_offset
    8
    ;; float64 _desired_v
    8
    ;; float64 _max_a
    8
    ;; float64 _incline_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position_offset
       (sys::poke _position_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_v
       (sys::poke _desired_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_a
       (sys::poke _max_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _incline_angle
       (sys::poke _incline_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position_offset
     (setq _position_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_v
     (setq _desired_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_a
     (setq _max_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _incline_angle
     (setq _incline_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::SplineDriveParam :md5sum-) "d3a6d815da24b8149fc628a98810f734")
(setf (get agv_msgs::SplineDriveParam :datatype-) "agv_msgs/SplineDriveParam")
(setf (get agv_msgs::SplineDriveParam :definition-)
      "float64 position_offset
float64 desired_v
float64 max_a
float64 incline_angle
")



(provide :agv_msgs/SplineDriveParam "d3a6d815da24b8149fc628a98810f734")


