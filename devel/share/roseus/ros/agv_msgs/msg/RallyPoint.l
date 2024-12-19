;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::RallyPoint)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'RallyPoint (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::RALLYPOINT")
  (make-package "AGV_MSGS::RALLYPOINT"))

(in-package "ROS")
;;//! \htmlinclude RallyPoint.msg.html


(defclass agv_msgs::RallyPoint
  :super ros::object
  :slots (_point _id _name _priority _radius _creation_time ))

(defmethod agv_msgs::RallyPoint
  (:init
   (&key
    ((:point __point) (instance agv_msgs::Waypoint :init))
    ((:id __id) (instance agv_msgs::ID :init))
    ((:name __name) "")
    ((:priority __priority) 0)
    ((:radius __radius) 0.0)
    ((:creation_time __creation_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _point __point)
   (setq _id __id)
   (setq _name (string __name))
   (setq _priority (round __priority))
   (setq _radius (float __radius))
   (setq _creation_time __creation_time)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:creation_time
   (&optional __creation_time)
   (if __creation_time (setq _creation_time __creation_time)) _creation_time)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/Waypoint _point
    (send _point :serialization-length)
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; string _name
    4 (length _name)
    ;; uint16 _priority
    2
    ;; float32 _radius
    4
    ;; time _creation_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/Waypoint _point
       (send _point :serialize s)
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _priority
       (write-word _priority s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _creation_time
       (write-long (send _creation_time :sec) s) (write-long (send _creation_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/Waypoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _creation_time
     (send _creation_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _creation_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::RallyPoint :md5sum-) "35d2c36ca4d854de8711816e6db62eaf")
(setf (get agv_msgs::RallyPoint :datatype-) "agv_msgs/RallyPoint")
(setf (get agv_msgs::RallyPoint :definition-)
      "agv_msgs/Waypoint point
agv_msgs/ID id
string name
uint16 priority
float32 radius
time creation_time
================================================================================
MSG: agv_msgs/Waypoint
Header header
agv_msgs/NavPose pose
agv_msgs/WaypointStatus status

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
MSG: agv_msgs/NavPose
float64 x
float64 y
float64 z
float64 theta

uint8 type
uint8 UNKNOWN=0

================================================================================
MSG: agv_msgs/WaypointStatus
agv_msgs/ID goal_id
uint8 state # contins actionlib::SimpleClientGoalState state
float32 radius
bool road
bool intersection
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/RallyPoint "35d2c36ca4d854de8711816e6db62eaf")


