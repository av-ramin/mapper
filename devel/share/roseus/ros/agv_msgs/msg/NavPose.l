;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavPose)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavPose (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVPOSE")
  (make-package "AGV_MSGS::NAVPOSE"))

(in-package "ROS")
;;//! \htmlinclude NavPose.msg.html


(intern "*UNKNOWN*" (find-package "AGV_MSGS::NAVPOSE"))
(shadow '*UNKNOWN* (find-package "AGV_MSGS::NAVPOSE"))
(defconstant agv_msgs::NavPose::*UNKNOWN* 0)

(defun agv_msgs::NavPose-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::NavPose::*UNKNOWN*)
        (t nil)))

(defclass agv_msgs::NavPose
  :super ros::object
  :slots (_x _y _z _theta _type ))

(defmethod agv_msgs::NavPose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   (setq _type (round __type))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _theta
    8
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::NavPose :md5sum-) "9fc6322717759e20499f9f9bdd070351")
(setf (get agv_msgs::NavPose :datatype-) "agv_msgs/NavPose")
(setf (get agv_msgs::NavPose :definition-)
      "float64 x
float64 y
float64 z
float64 theta

uint8 type
uint8 UNKNOWN=0

")



(provide :agv_msgs/NavPose "9fc6322717759e20499f9f9bdd070351")


