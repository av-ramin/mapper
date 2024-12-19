;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::BehaviorInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'BehaviorInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BEHAVIORINFO")
  (make-package "AGV_MSGS::BEHAVIORINFO"))

(in-package "ROS")
;;//! \htmlinclude BehaviorInfo.msg.html


(defclass agv_msgs::BehaviorInfo
  :super ros::object
  :slots (_id _name _priority _enabled ))

(defmethod agv_msgs::BehaviorInfo
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:name __name) "")
    ((:priority __priority) 0)
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _id __id)
   (setq _name (string __name))
   (setq _priority (round __priority))
   (setq _enabled __enabled)
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
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; string _name
    4 (length _name)
    ;; uint16 _priority
    2
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _priority
       (write-word _priority s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::BehaviorInfo :md5sum-) "e8711bc09b068bdf072c07edaec200c9")
(setf (get agv_msgs::BehaviorInfo :datatype-) "agv_msgs/BehaviorInfo")
(setf (get agv_msgs::BehaviorInfo :definition-)
      "agv_msgs/ID id
string name
uint16 priority
bool enabled
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/BehaviorInfo "e8711bc09b068bdf072c07edaec200c9")


