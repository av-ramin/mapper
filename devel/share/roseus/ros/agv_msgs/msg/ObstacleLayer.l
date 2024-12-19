;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ObstacleLayer)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ObstacleLayer (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::OBSTACLELAYER")
  (make-package "AGV_MSGS::OBSTACLELAYER"))

(in-package "ROS")
;;//! \htmlinclude ObstacleLayer.msg.html


(defclass agv_msgs::ObstacleLayer
  :super ros::object
  :slots (_name _id _color _order ))

(defmethod agv_msgs::ObstacleLayer
  (:init
   (&key
    ((:name __name) "")
    ((:id __id) (instance agv_msgs::ID :init))
    ((:color __color) (make-array 4 :initial-element 0 :element-type :char))
    ((:order __order) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _id __id)
   (setq _color __color)
   (setq _order (round __order))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; uint8[4] _color
    (* 1    4)
    ;; uint8 _order
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; uint8[4] _color
     (princ _color s)
     ;; uint8 _order
       (write-byte _order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uint8[4] _color
   (setq _color (make-array 4 :element-type :char))
   (replace _color buf :start2 ptr-) (incf ptr- 4)
   ;; uint8 _order
     (setq _order (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::ObstacleLayer :md5sum-) "8bd0537b4fe7e49768bd2ae71fd5bb22")
(setf (get agv_msgs::ObstacleLayer :datatype-) "agv_msgs/ObstacleLayer")
(setf (get agv_msgs::ObstacleLayer :definition-)
      "string name
agv_msgs/ID id
uint8[4] color
uint8 order
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/ObstacleLayer "8bd0537b4fe7e49768bd2ae71fd5bb22")


