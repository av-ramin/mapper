;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Behavior)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Behavior (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BEHAVIOR")
  (make-package "AGV_MSGS::BEHAVIOR"))

(in-package "ROS")
;;//! \htmlinclude Behavior.msg.html


(defclass agv_msgs::Behavior
  :super ros::object
  :slots (_info _properties ))

(defmethod agv_msgs::Behavior
  (:init
   (&key
    ((:info __info) (instance agv_msgs::BehaviorInfo :init))
    ((:properties __properties) ())
    )
   (send-super :init)
   (setq _info __info)
   (setq _properties __properties)
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/BehaviorInfo _info
    (send _info :serialization-length)
    ;; agv_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/BehaviorInfo _info
       (send _info :serialize s)
     ;; agv_msgs/KeyValue[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/BehaviorInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; agv_msgs/KeyValue[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance agv_msgs::KeyValue :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::Behavior :md5sum-) "ead27a2d6e2bdcc7f79010ccab812ae7")
(setf (get agv_msgs::Behavior :datatype-) "agv_msgs/Behavior")
(setf (get agv_msgs::Behavior :definition-)
      "agv_msgs/BehaviorInfo info
agv_msgs/KeyValue[] properties
================================================================================
MSG: agv_msgs/BehaviorInfo
agv_msgs/ID id
string name
uint16 priority
bool enabled
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/KeyValue
string key
string value
")



(provide :agv_msgs/Behavior "ead27a2d6e2bdcc7f79010ccab812ae7")


