;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::MissionInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'MissionInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::MISSIONINFO")
  (make-package "AGV_MSGS::MISSIONINFO"))

(in-package "ROS")
;;//! \htmlinclude MissionInfo.msg.html


(defclass agv_msgs::MissionInfo
  :super ros::object
  :slots (_id _name _description _group _creation_time _modification_time ))

(defmethod agv_msgs::MissionInfo
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:name __name) "")
    ((:description __description) "")
    ((:group __group) "")
    ((:creation_time __creation_time) (instance ros::time :init))
    ((:modification_time __modification_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _group (string __group))
   (setq _creation_time __creation_time)
   (setq _modification_time __modification_time)
   self)
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
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:creation_time
   (&optional __creation_time)
   (if __creation_time (setq _creation_time __creation_time)) _creation_time)
  (:modification_time
   (&optional __modification_time)
   (if __modification_time (setq _modification_time __modification_time)) _modification_time)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; string _group
    4 (length _group)
    ;; time _creation_time
    8
    ;; time _modification_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; time _creation_time
       (write-long (send _creation_time :sec) s) (write-long (send _creation_time :nsec) s)
     ;; time _modification_time
       (write-long (send _modification_time :sec) s) (write-long (send _modification_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _creation_time
     (send _creation_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _creation_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _modification_time
     (send _modification_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _modification_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::MissionInfo :md5sum-) "696912476d004d91dc3f26a1f2e44a40")
(setf (get agv_msgs::MissionInfo :datatype-) "agv_msgs/MissionInfo")
(setf (get agv_msgs::MissionInfo :definition-)
      "  agv_msgs/ID id
  string name
  string description
  string group
  time creation_time
  time modification_time
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/MissionInfo "696912476d004d91dc3f26a1f2e44a40")


