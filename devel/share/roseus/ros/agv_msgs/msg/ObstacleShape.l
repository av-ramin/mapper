;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ObstacleShape)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ObstacleShape (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::OBSTACLESHAPE")
  (make-package "AGV_MSGS::OBSTACLESHAPE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleShape.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*INVALID*" (find-package "AGV_MSGS::OBSTACLESHAPE"))
(shadow '*INVALID* (find-package "AGV_MSGS::OBSTACLESHAPE"))
(defconstant agv_msgs::ObstacleShape::*INVALID* 0)
(intern "*POLYGON*" (find-package "AGV_MSGS::OBSTACLESHAPE"))
(shadow '*POLYGON* (find-package "AGV_MSGS::OBSTACLESHAPE"))
(defconstant agv_msgs::ObstacleShape::*POLYGON* 1)
(intern "*RADIUS*" (find-package "AGV_MSGS::OBSTACLESHAPE"))
(shadow '*RADIUS* (find-package "AGV_MSGS::OBSTACLESHAPE"))
(defconstant agv_msgs::ObstacleShape::*RADIUS* 2)
(intern "*BARRIER*" (find-package "AGV_MSGS::OBSTACLESHAPE"))
(shadow '*BARRIER* (find-package "AGV_MSGS::OBSTACLESHAPE"))
(defconstant agv_msgs::ObstacleShape::*BARRIER* 3)

(defun agv_msgs::ObstacleShape-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::ObstacleShape::*INVALID*)
        ((= const 1) 'agv_msgs::ObstacleShape::*POLYGON*)
        ((= const 2) 'agv_msgs::ObstacleShape::*RADIUS*)
        ((= const 3) 'agv_msgs::ObstacleShape::*BARRIER*)
        (t nil)))

(defclass agv_msgs::ObstacleShape
  :super ros::object
  :slots (_id _points _cost _radius _frame_id _type ))

(defmethod agv_msgs::ObstacleShape
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:points __points) ())
    ((:cost __cost) 0.0)
    ((:radius __radius) 0.0)
    ((:frame_id __frame_id) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _points __points)
   (setq _cost (float __cost))
   (setq _radius (float __radius))
   (setq _frame_id (string __frame_id))
   (setq _type (round __type))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:cost
   (&optional __cost)
   (if __cost (setq _cost __cost)) _cost)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; geometry_msgs/Point32[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float32 _cost
    4
    ;; float32 _radius
    4
    ;; string _frame_id
    4 (length _frame_id)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; geometry_msgs/Point32[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float32 _cost
       (sys::poke _cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; geometry_msgs/Point32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _cost
     (setq _cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::ObstacleShape :md5sum-) "b4f7260af6ba9afb9ab4a8f3e58a2565")
(setf (get agv_msgs::ObstacleShape :datatype-) "agv_msgs/ObstacleShape")
(setf (get agv_msgs::ObstacleShape :definition-)
      "agv_msgs/ID id
geometry_msgs/Point32[] points 
float32 cost
float32 radius
string frame_id

uint8 type
uint8 INVALID = 0
uint8 POLYGON = 1
uint8 RADIUS = 2 
uint8 BARRIER = 3  
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

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



(provide :agv_msgs/ObstacleShape "b4f7260af6ba9afb9ab4a8f3e58a2565")


