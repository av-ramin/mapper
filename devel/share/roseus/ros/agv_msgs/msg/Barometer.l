;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Barometer)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Barometer (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BAROMETER")
  (make-package "AGV_MSGS::BAROMETER"))

(in-package "ROS")
;;//! \htmlinclude Barometer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::Barometer
  :super ros::object
  :slots (_header _pressure _altitude _pressure_variance _altitude_variance _altitude_datum ))

(defmethod agv_msgs::Barometer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pressure __pressure) 0.0)
    ((:altitude __altitude) 0.0)
    ((:pressure_variance __pressure_variance) 0.0)
    ((:altitude_variance __altitude_variance) 0.0)
    ((:altitude_datum __altitude_datum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pressure (float __pressure))
   (setq _altitude (float __altitude))
   (setq _pressure_variance (float __pressure_variance))
   (setq _altitude_variance (float __altitude_variance))
   (setq _altitude_datum (round __altitude_datum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:pressure_variance
   (&optional __pressure_variance)
   (if __pressure_variance (setq _pressure_variance __pressure_variance)) _pressure_variance)
  (:altitude_variance
   (&optional __altitude_variance)
   (if __altitude_variance (setq _altitude_variance __altitude_variance)) _altitude_variance)
  (:altitude_datum
   (&optional __altitude_datum)
   (if __altitude_datum (setq _altitude_datum __altitude_datum)) _altitude_datum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _pressure
    8
    ;; float64 _altitude
    8
    ;; float64 _pressure_variance
    8
    ;; float64 _altitude_variance
    8
    ;; uint16 _altitude_datum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pressure_variance
       (sys::poke _pressure_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_variance
       (sys::poke _altitude_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _altitude_datum
       (write-word _altitude_datum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _pressure
     (setq _pressure (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pressure_variance
     (setq _pressure_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_variance
     (setq _altitude_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _altitude_datum
     (setq _altitude_datum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::Barometer :md5sum-) "a020ce80c5d250ada5a7e4279fde9898")
(setf (get agv_msgs::Barometer :datatype-) "agv_msgs/Barometer")
(setf (get agv_msgs::Barometer :definition-)
      "Header header

float64 pressure # Pa
float64 altitude

# 0 is interpreted as variance unknown
float64 pressure_variance
float64 altitude_variance

# EPSG code of the vertical datum used for altitude, e.g. 4326 for WGS84.
# Set to 0 when altitude is not referenced against any datum.
uint16 altitude_datum

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



(provide :agv_msgs/Barometer "a020ce80c5d250ada5a7e4279fde9898")


