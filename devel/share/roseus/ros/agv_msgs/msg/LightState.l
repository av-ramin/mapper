;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::LightState)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'LightState (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIGHTSTATE")
  (make-package "AGV_MSGS::LIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude LightState.msg.html


(defclass agv_msgs::LightState
  :super ros::object
  :slots (_name _freq _duty _periods_set _periods_remaining ))

(defmethod agv_msgs::LightState
  (:init
   (&key
    ((:name __name) "")
    ((:freq __freq) 0.0)
    ((:duty __duty) 0.0)
    ((:periods_set __periods_set) 0)
    ((:periods_remaining __periods_remaining) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _freq (float __freq))
   (setq _duty (float __duty))
   (setq _periods_set (round __periods_set))
   (setq _periods_remaining (round __periods_remaining))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:duty
   (&optional __duty)
   (if __duty (setq _duty __duty)) _duty)
  (:periods_set
   (&optional __periods_set)
   (if __periods_set (setq _periods_set __periods_set)) _periods_set)
  (:periods_remaining
   (&optional __periods_remaining)
   (if __periods_remaining (setq _periods_remaining __periods_remaining)) _periods_remaining)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _freq
    4
    ;; float32 _duty
    4
    ;; uint32 _periods_set
    4
    ;; uint32 _periods_remaining
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _duty
       (sys::poke _duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _periods_set
       (write-long _periods_set s)
     ;; uint32 _periods_remaining
       (write-long _periods_remaining s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _freq
     (setq _freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _duty
     (setq _duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _periods_set
     (setq _periods_set (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _periods_remaining
     (setq _periods_remaining (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::LightState :md5sum-) "a84044d93bb2367d8d3d39575e7564b6")
(setf (get agv_msgs::LightState :datatype-) "agv_msgs/LightState")
(setf (get agv_msgs::LightState :definition-)
      "string name
float32 freq
float32 duty
uint32 periods_set
uint32 periods_remaining

")



(provide :agv_msgs/LightState "a84044d93bb2367d8d3d39575e7564b6")


