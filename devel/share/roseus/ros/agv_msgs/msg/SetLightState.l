;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SetLightState)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SetLightState (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SETLIGHTSTATE")
  (make-package "AGV_MSGS::SETLIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude SetLightState.msg.html


(defclass agv_msgs::SetLightState
  :super ros::object
  :slots (_name _frequency _duty _num_periods ))

(defmethod agv_msgs::SetLightState
  (:init
   (&key
    ((:name __name) "")
    ((:frequency __frequency) 0.0)
    ((:duty __duty) 0.0)
    ((:num_periods __num_periods) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _frequency (float __frequency))
   (setq _duty (float __duty))
   (setq _num_periods (round __num_periods))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:duty
   (&optional __duty)
   (if __duty (setq _duty __duty)) _duty)
  (:num_periods
   (&optional __num_periods)
   (if __num_periods (setq _num_periods __num_periods)) _num_periods)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _frequency
    4
    ;; float32 _duty
    4
    ;; uint32 _num_periods
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _duty
       (sys::poke _duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _num_periods
       (write-long _num_periods s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _duty
     (setq _duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _num_periods
     (setq _num_periods (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::SetLightState :md5sum-) "194cab8d6bb9205433dc15755489711e")
(setf (get agv_msgs::SetLightState :datatype-) "agv_msgs/SetLightState")
(setf (get agv_msgs::SetLightState :definition-)
      "string name
float32 frequency
float32 duty
uint32 num_periods

")



(provide :agv_msgs/SetLightState "194cab8d6bb9205433dc15755489711e")


