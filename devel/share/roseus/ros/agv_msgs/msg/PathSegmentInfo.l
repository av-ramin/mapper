;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::PathSegmentInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'PathSegmentInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PATHSEGMENTINFO")
  (make-package "AGV_MSGS::PATHSEGMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude PathSegmentInfo.msg.html


(intern "*UNKNOWN*" (find-package "AGV_MSGS::PATHSEGMENTINFO"))
(shadow '*UNKNOWN* (find-package "AGV_MSGS::PATHSEGMENTINFO"))
(defconstant agv_msgs::PathSegmentInfo::*UNKNOWN* 0)

(defun agv_msgs::PathSegmentInfo-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::PathSegmentInfo::*UNKNOWN*)
        (t nil)))

(defclass agv_msgs::PathSegmentInfo
  :super ros::object
  :slots (_id _type _name _color ))

(defmethod agv_msgs::PathSegmentInfo
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:type __type) 0)
    ((:name __name) "")
    ((:color __color) (make-array 4 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id __id)
   (setq _type (round __type))
   (setq _name (string __name))
   (setq _color __color)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; uint8 _type
    1
    ;; string _name
    4 (length _name)
    ;; uint8[4] _color
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8[4] _color
     (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[4] _color
   (setq _color (make-array 4 :element-type :char))
   (replace _color buf :start2 ptr-) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::PathSegmentInfo :md5sum-) "8c9bb7ab00e46283462814c46c76dfc4")
(setf (get agv_msgs::PathSegmentInfo :datatype-) "agv_msgs/PathSegmentInfo")
(setf (get agv_msgs::PathSegmentInfo :definition-)
      "agv_msgs/ID id

uint8 type
uint8 UNKNOWN=0

string name
uint8[4] color
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/PathSegmentInfo "8c9bb7ab00e46283462814c46c76dfc4")


