;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ObstacleInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ObstacleInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::OBSTACLEINFO")
  (make-package "AGV_MSGS::OBSTACLEINFO"))

(in-package "ROS")
;;//! \htmlinclude ObstacleInfo.msg.html


(intern "*REPLACE*" (find-package "AGV_MSGS::OBSTACLEINFO"))
(shadow '*REPLACE* (find-package "AGV_MSGS::OBSTACLEINFO"))
(defconstant agv_msgs::ObstacleInfo::*REPLACE* 0)
(intern "*ADD*" (find-package "AGV_MSGS::OBSTACLEINFO"))
(shadow '*ADD* (find-package "AGV_MSGS::OBSTACLEINFO"))
(defconstant agv_msgs::ObstacleInfo::*ADD* 1)
(intern "*SUBTRACT*" (find-package "AGV_MSGS::OBSTACLEINFO"))
(shadow '*SUBTRACT* (find-package "AGV_MSGS::OBSTACLEINFO"))
(defconstant agv_msgs::ObstacleInfo::*SUBTRACT* 2)

(defun agv_msgs::ObstacleInfo-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::ObstacleInfo::*REPLACE*)
        ((= const 1) 'agv_msgs::ObstacleInfo::*ADD*)
        ((= const 2) 'agv_msgs::ObstacleInfo::*SUBTRACT*)
        (t nil)))

(defclass agv_msgs::ObstacleInfo
  :super ros::object
  :slots (_description _symbol _layer_id _enabled _priority _operation ))

(defmethod agv_msgs::ObstacleInfo
  (:init
   (&key
    ((:description __description) "")
    ((:symbol __symbol) 0)
    ((:layer_id __layer_id) (instance agv_msgs::ID :init))
    ((:enabled __enabled) nil)
    ((:priority __priority) 0)
    ((:operation __operation) 0)
    )
   (send-super :init)
   (setq _description (string __description))
   (setq _symbol (round __symbol))
   (setq _layer_id __layer_id)
   (setq _enabled __enabled)
   (setq _priority (round __priority))
   (setq _operation (round __operation))
   self)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:symbol
   (&optional __symbol)
   (if __symbol (setq _symbol __symbol)) _symbol)
  (:layer_id
   (&rest __layer_id)
   (if (keywordp (car __layer_id))
       (send* _layer_id __layer_id)
     (progn
       (if __layer_id (setq _layer_id (car __layer_id)))
       _layer_id)))
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; string _description
    4 (length _description)
    ;; uint16 _symbol
    2
    ;; agv_msgs/ID _layer_id
    (send _layer_id :serialization-length)
    ;; bool _enabled
    1
    ;; uint16 _priority
    2
    ;; uint8 _operation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; uint16 _symbol
       (write-word _symbol s)
     ;; agv_msgs/ID _layer_id
       (send _layer_id :serialize s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _priority
       (write-word _priority s)
     ;; uint8 _operation
       (write-byte _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _symbol
     (setq _symbol (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; agv_msgs/ID _layer_id
     (send _layer_id :deserialize buf ptr-) (incf ptr- (send _layer_id :serialization-length))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _operation
     (setq _operation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::ObstacleInfo :md5sum-) "77a1e000112bcc70c977607dda6c239e")
(setf (get agv_msgs::ObstacleInfo :datatype-) "agv_msgs/ObstacleInfo")
(setf (get agv_msgs::ObstacleInfo :definition-)
      "string description
uint16 symbol
agv_msgs/ID layer_id
bool enabled
uint16 priority

uint8 operation
uint8 REPLACE = 0
uint8 ADD = 1
uint8 SUBTRACT = 2
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/ObstacleInfo "77a1e000112bcc70c977607dda6c239e")


