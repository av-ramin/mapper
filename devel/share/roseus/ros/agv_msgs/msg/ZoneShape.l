;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ZoneShape)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ZoneShape (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ZONESHAPE")
  (make-package "AGV_MSGS::ZONESHAPE"))

(in-package "ROS")
;;//! \htmlinclude ZoneShape.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*INVALID*" (find-package "AGV_MSGS::ZONESHAPE"))
(shadow '*INVALID* (find-package "AGV_MSGS::ZONESHAPE"))
(defconstant agv_msgs::ZoneShape::*INVALID* 0)
(intern "*POLYGON*" (find-package "AGV_MSGS::ZONESHAPE"))
(shadow '*POLYGON* (find-package "AGV_MSGS::ZONESHAPE"))
(defconstant agv_msgs::ZoneShape::*POLYGON* 1)
(intern "*RADIUS*" (find-package "AGV_MSGS::ZONESHAPE"))
(shadow '*RADIUS* (find-package "AGV_MSGS::ZONESHAPE"))
(defconstant agv_msgs::ZoneShape::*RADIUS* 2)
(intern "*BARRIER*" (find-package "AGV_MSGS::ZONESHAPE"))
(shadow '*BARRIER* (find-package "AGV_MSGS::ZONESHAPE"))
(defconstant agv_msgs::ZoneShape::*BARRIER* 3)

(defun agv_msgs::ZoneShape-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::ZoneShape::*INVALID*)
        ((= const 1) 'agv_msgs::ZoneShape::*POLYGON*)
        ((= const 2) 'agv_msgs::ZoneShape::*RADIUS*)
        ((= const 3) 'agv_msgs::ZoneShape::*BARRIER*)
        (t nil)))

(defclass agv_msgs::ZoneShape
  :super ros::object
  :slots (_frame_id _points _radius _type ))

(defmethod agv_msgs::ZoneShape
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:points __points) ())
    ((:radius __radius) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _points __points)
   (setq _radius (float __radius))
   (setq _type (round __type))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Point32[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float32 _radius
    4
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Point32[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::ZoneShape :md5sum-) "a50b2727b92148a1d88f37b509d9c8f1")
(setf (get agv_msgs::ZoneShape :datatype-) "agv_msgs/ZoneShape")
(setf (get agv_msgs::ZoneShape :definition-)
      "string frame_id
geometry_msgs/Point32[] points
float32 radius

uint8 type
uint8 INVALID = 0
uint8 POLYGON = 1
uint8 RADIUS = 2 
uint8 BARRIER = 3  
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :agv_msgs/ZoneShape "a50b2727b92148a1d88f37b509d9c8f1")


