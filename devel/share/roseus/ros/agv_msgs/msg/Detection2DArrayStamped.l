;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Detection2DArrayStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Detection2DArrayStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DETECTION2DARRAYSTAMPED")
  (make-package "AGV_MSGS::DETECTION2DARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude Detection2DArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::Detection2DArrayStamped
  :super ros::object
  :slots (_header _detections ))

(defmethod agv_msgs::Detection2DArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/Detection2D[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/Detection2D[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/Detection2D[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance agv_msgs::Detection2D :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::Detection2DArrayStamped :md5sum-) "341257920ef9784d3faf9045340a82be")
(setf (get agv_msgs::Detection2DArrayStamped :datatype-) "agv_msgs/Detection2DArrayStamped")
(setf (get agv_msgs::Detection2DArrayStamped :definition-)
      "Header header
Detection2D[] detections
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

================================================================================
MSG: agv_msgs/Detection2D
int32 class_id
string class_name
float32 probability
int32 track_id
uint32 xmin
uint32 ymin
uint32 xmax
uint32 ymax
float32 yaw_hor
float32 yaw_hor_dev
float32 yaw_ver
float32 yaw_ver_dev
float32 dist
float32 dist_dev
")



(provide :agv_msgs/Detection2DArrayStamped "341257920ef9784d3faf9045340a82be")


