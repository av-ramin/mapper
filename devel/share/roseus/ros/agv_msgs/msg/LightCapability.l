;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::LightCapability)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'LightCapability (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIGHTCAPABILITY")
  (make-package "AGV_MSGS::LIGHTCAPABILITY"))

(in-package "ROS")
;;//! \htmlinclude LightCapability.msg.html


(defclass agv_msgs::LightCapability
  :super ros::object
  :slots (_name _desc_name _min_duty_period _min_freq _max_freq _min_duty _max_duty _default_freq _default_duty _topic ))

(defmethod agv_msgs::LightCapability
  (:init
   (&key
    ((:name __name) "")
    ((:desc_name __desc_name) "")
    ((:min_duty_period __min_duty_period) 0.0)
    ((:min_freq __min_freq) 0.0)
    ((:max_freq __max_freq) 0.0)
    ((:min_duty __min_duty) 0.0)
    ((:max_duty __max_duty) 0.0)
    ((:default_freq __default_freq) 0.0)
    ((:default_duty __default_duty) 0.0)
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _desc_name (string __desc_name))
   (setq _min_duty_period (float __min_duty_period))
   (setq _min_freq (float __min_freq))
   (setq _max_freq (float __max_freq))
   (setq _min_duty (float __min_duty))
   (setq _max_duty (float __max_duty))
   (setq _default_freq (float __default_freq))
   (setq _default_duty (float __default_duty))
   (setq _topic (string __topic))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:desc_name
   (&optional __desc_name)
   (if __desc_name (setq _desc_name __desc_name)) _desc_name)
  (:min_duty_period
   (&optional __min_duty_period)
   (if __min_duty_period (setq _min_duty_period __min_duty_period)) _min_duty_period)
  (:min_freq
   (&optional __min_freq)
   (if __min_freq (setq _min_freq __min_freq)) _min_freq)
  (:max_freq
   (&optional __max_freq)
   (if __max_freq (setq _max_freq __max_freq)) _max_freq)
  (:min_duty
   (&optional __min_duty)
   (if __min_duty (setq _min_duty __min_duty)) _min_duty)
  (:max_duty
   (&optional __max_duty)
   (if __max_duty (setq _max_duty __max_duty)) _max_duty)
  (:default_freq
   (&optional __default_freq)
   (if __default_freq (setq _default_freq __default_freq)) _default_freq)
  (:default_duty
   (&optional __default_duty)
   (if __default_duty (setq _default_duty __default_duty)) _default_duty)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _desc_name
    4 (length _desc_name)
    ;; float64 _min_duty_period
    8
    ;; float64 _min_freq
    8
    ;; float64 _max_freq
    8
    ;; float64 _min_duty
    8
    ;; float64 _max_duty
    8
    ;; float64 _default_freq
    8
    ;; float64 _default_duty
    8
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _desc_name
       (write-long (length _desc_name) s) (princ _desc_name s)
     ;; float64 _min_duty_period
       (sys::poke _min_duty_period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_freq
       (sys::poke _min_freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_freq
       (sys::poke _max_freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_duty
       (sys::poke _min_duty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_duty
       (sys::poke _max_duty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _default_freq
       (sys::poke _default_freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _default_duty
       (sys::poke _default_duty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _desc_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _desc_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _min_duty_period
     (setq _min_duty_period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_freq
     (setq _min_freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_freq
     (setq _max_freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_duty
     (setq _min_duty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_duty
     (setq _max_duty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _default_freq
     (setq _default_freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _default_duty
     (setq _default_duty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get agv_msgs::LightCapability :md5sum-) "324c001d3c0f36b39a0b1a25c216ac00")
(setf (get agv_msgs::LightCapability :datatype-) "agv_msgs/LightCapability")
(setf (get agv_msgs::LightCapability :definition-)
      "string name
string desc_name
float64 min_duty_period
float64 min_freq
float64 max_freq
float64 min_duty
float64 max_duty
float64 default_freq
float64 default_duty
string topic
")



(provide :agv_msgs/LightCapability "324c001d3c0f36b39a0b1a25c216ac00")


