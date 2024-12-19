;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavigationConfig)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavigationConfig (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVIGATIONCONFIG")
  (make-package "AGV_MSGS::NAVIGATIONCONFIG"))

(in-package "ROS")
;;//! \htmlinclude NavigationConfig.msg.html


(intern "*DIR_FORWARD*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*DIR_FORWARD* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*DIR_FORWARD* 0)
(intern "*DIR_CLOCKWISE*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*DIR_CLOCKWISE* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*DIR_CLOCKWISE* 0)
(intern "*DIR_REVERSE*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*DIR_REVERSE* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*DIR_REVERSE* 1)
(intern "*DIR_COUNTERCLOCKWISE*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*DIR_COUNTERCLOCKWISE* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*DIR_COUNTERCLOCKWISE* 1)
(intern "*REPEAT_NONE*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*REPEAT_NONE* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*REPEAT_NONE* 0)
(intern "*REPEAT_CIRCULAR*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*REPEAT_CIRCULAR* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*REPEAT_CIRCULAR* 1)
(intern "*REPEAT_DOUBLE_BACK*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*REPEAT_DOUBLE_BACK* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*REPEAT_DOUBLE_BACK* 2)
(intern "*INFINITE_LOOPS*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*INFINITE_LOOPS* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*INFINITE_LOOPS* 0)
(intern "*SINGLE_EXECUTION*" (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(shadow '*SINGLE_EXECUTION* (find-package "AGV_MSGS::NAVIGATIONCONFIG"))
(defconstant agv_msgs::NavigationConfig::*SINGLE_EXECUTION* 1)

(defun agv_msgs::NavigationConfig-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::NavigationConfig::*DIR_FORWARD*)
        ((= const 0) 'agv_msgs::NavigationConfig::*DIR_CLOCKWISE*)
        ((= const 1) 'agv_msgs::NavigationConfig::*DIR_REVERSE*)
        ((= const 1) 'agv_msgs::NavigationConfig::*DIR_COUNTERCLOCKWISE*)
        ((= const 0) 'agv_msgs::NavigationConfig::*REPEAT_NONE*)
        ((= const 1) 'agv_msgs::NavigationConfig::*REPEAT_CIRCULAR*)
        ((= const 2) 'agv_msgs::NavigationConfig::*REPEAT_DOUBLE_BACK*)
        ((= const 0) 'agv_msgs::NavigationConfig::*INFINITE_LOOPS*)
        ((= const 1) 'agv_msgs::NavigationConfig::*SINGLE_EXECUTION*)
        (t nil)))

(defclass agv_msgs::NavigationConfig
  :super ros::object
  :slots (_direction _repeat_mode _no_of_loops ))

(defmethod agv_msgs::NavigationConfig
  (:init
   (&key
    ((:direction __direction) 0)
    ((:repeat_mode __repeat_mode) 0)
    ((:no_of_loops __no_of_loops) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   (setq _repeat_mode (round __repeat_mode))
   (setq _no_of_loops (round __no_of_loops))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:repeat_mode
   (&optional __repeat_mode)
   (if __repeat_mode (setq _repeat_mode __repeat_mode)) _repeat_mode)
  (:no_of_loops
   (&optional __no_of_loops)
   (if __no_of_loops (setq _no_of_loops __no_of_loops)) _no_of_loops)
  (:serialization-length
   ()
   (+
    ;; uint8 _direction
    1
    ;; uint8 _repeat_mode
    1
    ;; uint16 _no_of_loops
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint8 _repeat_mode
       (write-byte _repeat_mode s)
     ;; uint16 _no_of_loops
       (write-word _no_of_loops s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _repeat_mode
     (setq _repeat_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _no_of_loops
     (setq _no_of_loops (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::NavigationConfig :md5sum-) "cb4f63e9ded9599f26fd23654a8fbe60")
(setf (get agv_msgs::NavigationConfig :datatype-) "agv_msgs/NavigationConfig")
(setf (get agv_msgs::NavigationConfig :definition-)
      "uint8 direction
uint8 DIR_FORWARD=0
uint8 DIR_CLOCKWISE=0
uint8 DIR_REVERSE=1
uint8 DIR_COUNTERCLOCKWISE=1

uint8 repeat_mode
uint8 REPEAT_NONE=0
uint8 REPEAT_CIRCULAR=1
uint8 REPEAT_DOUBLE_BACK=2

uint16 no_of_loops
uint8 INFINITE_LOOPS = 0
uint8 SINGLE_EXECUTION = 1
")



(provide :agv_msgs/NavigationConfig "cb4f63e9ded9599f26fd23654a8fbe60")


