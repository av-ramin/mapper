;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::LightsState)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'LightsState (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIGHTSSTATE")
  (make-package "AGV_MSGS::LIGHTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude LightsState.msg.html


(defclass agv_msgs::LightsState
  :super ros::object
  :slots (_states ))

(defmethod agv_msgs::LightsState
  (:init
   (&key
    ((:states __states) ())
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/LightState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/LightState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/LightState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance agv_msgs::LightState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::LightsState :md5sum-) "be4eb97b3931f6aab3264f5b626bd43a")
(setf (get agv_msgs::LightsState :datatype-) "agv_msgs/LightsState")
(setf (get agv_msgs::LightsState :definition-)
      "agv_msgs/LightState[] states
================================================================================
MSG: agv_msgs/LightState
string name
float32 freq
float32 duty
uint32 periods_set
uint32 periods_remaining

")



(provide :agv_msgs/LightsState "be4eb97b3931f6aab3264f5b626bd43a")


