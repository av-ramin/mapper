;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Detection2D)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Detection2D (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DETECTION2D")
  (make-package "AGV_MSGS::DETECTION2D"))

(in-package "ROS")
;;//! \htmlinclude Detection2D.msg.html


(defclass agv_msgs::Detection2D
  :super ros::object
  :slots (_class_id _class_name _probability _track_id _xmin _ymin _xmax _ymax _yaw_hor _yaw_hor_dev _yaw_ver _yaw_ver_dev _dist _dist_dev ))

(defmethod agv_msgs::Detection2D
  (:init
   (&key
    ((:class_id __class_id) 0)
    ((:class_name __class_name) "")
    ((:probability __probability) 0.0)
    ((:track_id __track_id) 0)
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    ((:yaw_hor __yaw_hor) 0.0)
    ((:yaw_hor_dev __yaw_hor_dev) 0.0)
    ((:yaw_ver __yaw_ver) 0.0)
    ((:yaw_ver_dev __yaw_ver_dev) 0.0)
    ((:dist __dist) 0.0)
    ((:dist_dev __dist_dev) 0.0)
    )
   (send-super :init)
   (setq _class_id (round __class_id))
   (setq _class_name (string __class_name))
   (setq _probability (float __probability))
   (setq _track_id (round __track_id))
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   (setq _yaw_hor (float __yaw_hor))
   (setq _yaw_hor_dev (float __yaw_hor_dev))
   (setq _yaw_ver (float __yaw_ver))
   (setq _yaw_ver_dev (float __yaw_ver_dev))
   (setq _dist (float __dist))
   (setq _dist_dev (float __dist_dev))
   self)
  (:class_id
   (&optional __class_id)
   (if __class_id (setq _class_id __class_id)) _class_id)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:yaw_hor
   (&optional __yaw_hor)
   (if __yaw_hor (setq _yaw_hor __yaw_hor)) _yaw_hor)
  (:yaw_hor_dev
   (&optional __yaw_hor_dev)
   (if __yaw_hor_dev (setq _yaw_hor_dev __yaw_hor_dev)) _yaw_hor_dev)
  (:yaw_ver
   (&optional __yaw_ver)
   (if __yaw_ver (setq _yaw_ver __yaw_ver)) _yaw_ver)
  (:yaw_ver_dev
   (&optional __yaw_ver_dev)
   (if __yaw_ver_dev (setq _yaw_ver_dev __yaw_ver_dev)) _yaw_ver_dev)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:dist_dev
   (&optional __dist_dev)
   (if __dist_dev (setq _dist_dev __dist_dev)) _dist_dev)
  (:serialization-length
   ()
   (+
    ;; int32 _class_id
    4
    ;; string _class_name
    4 (length _class_name)
    ;; float32 _probability
    4
    ;; int32 _track_id
    4
    ;; uint32 _xmin
    4
    ;; uint32 _ymin
    4
    ;; uint32 _xmax
    4
    ;; uint32 _ymax
    4
    ;; float32 _yaw_hor
    4
    ;; float32 _yaw_hor_dev
    4
    ;; float32 _yaw_ver
    4
    ;; float32 _yaw_ver_dev
    4
    ;; float32 _dist
    4
    ;; float32 _dist_dev
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _class_id
       (write-long _class_id s)
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; uint32 _xmin
       (write-long _xmin s)
     ;; uint32 _ymin
       (write-long _ymin s)
     ;; uint32 _xmax
       (write-long _xmax s)
     ;; uint32 _ymax
       (write-long _ymax s)
     ;; float32 _yaw_hor
       (sys::poke _yaw_hor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_hor_dev
       (sys::poke _yaw_hor_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_ver
       (sys::poke _yaw_ver (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_ver_dev
       (sys::poke _yaw_ver_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dist_dev
       (sys::poke _dist_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _class_id
     (setq _class_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _xmin
     (setq _xmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ymin
     (setq _ymin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _xmax
     (setq _xmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ymax
     (setq _ymax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _yaw_hor
     (setq _yaw_hor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_hor_dev
     (setq _yaw_hor_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_ver
     (setq _yaw_ver (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_ver_dev
     (setq _yaw_ver_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dist_dev
     (setq _dist_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::Detection2D :md5sum-) "828b4a851eb90a71558f422ff404dc24")
(setf (get agv_msgs::Detection2D :datatype-) "agv_msgs/Detection2D")
(setf (get agv_msgs::Detection2D :definition-)
      "int32 class_id
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



(provide :agv_msgs/Detection2D "828b4a851eb90a71558f422ff404dc24")


