;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::NavPathInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'NavPathInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::NAVPATHINFO")
  (make-package "AGV_MSGS::NAVPATHINFO"))

(in-package "ROS")
;;//! \htmlinclude NavPathInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*UNKNOWN* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*UNKNOWN* 0)
(intern "*MANUAL*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*MANUAL* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*MANUAL* 1)
(intern "*RECORDED*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*RECORDED* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*RECORDED* 2)
(intern "*IMPORTED*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*IMPORTED* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*IMPORTED* 3)
(intern "*OK*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*OK* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*OK* 0)
(intern "*UNCERTAIN*" (find-package "AGV_MSGS::NAVPATHINFO"))
(shadow '*UNCERTAIN* (find-package "AGV_MSGS::NAVPATHINFO"))
(defconstant agv_msgs::NavPathInfo::*UNCERTAIN* 1)

(defun agv_msgs::NavPathInfo-to-symbol (const)
  (cond
        ((= const 0) 'agv_msgs::NavPathInfo::*UNKNOWN*)
        ((= const 1) 'agv_msgs::NavPathInfo::*MANUAL*)
        ((= const 2) 'agv_msgs::NavPathInfo::*RECORDED*)
        ((= const 3) 'agv_msgs::NavPathInfo::*IMPORTED*)
        ((= const 0) 'agv_msgs::NavPathInfo::*OK*)
        ((= const 1) 'agv_msgs::NavPathInfo::*UNCERTAIN*)
        (t nil)))

(defclass agv_msgs::NavPathInfo
  :super ros::object
  :slots (_id _creation_time _type _uncertainty _name _color ))

(defmethod agv_msgs::NavPathInfo
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:creation_time __creation_time) (instance ros::time :init))
    ((:type __type) 0)
    ((:uncertainty __uncertainty) 0)
    ((:name __name) "")
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _creation_time __creation_time)
   (setq _type (round __type))
   (setq _uncertainty (round __uncertainty))
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
  (:creation_time
   (&optional __creation_time)
   (if __creation_time (setq _creation_time __creation_time)) _creation_time)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:uncertainty
   (&optional __uncertainty)
   (if __uncertainty (setq _uncertainty __uncertainty)) _uncertainty)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; time _creation_time
    8
    ;; uint8 _type
    1
    ;; uint8 _uncertainty
    1
    ;; string _name
    4 (length _name)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; time _creation_time
       (write-long (send _creation_time :sec) s) (write-long (send _creation_time :nsec) s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _uncertainty
       (write-byte _uncertainty s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; time _creation_time
     (send _creation_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _creation_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _uncertainty
     (setq _uncertainty (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::NavPathInfo :md5sum-) "15f56a45b039a39725c3469a1fbf2667")
(setf (get agv_msgs::NavPathInfo :datatype-) "agv_msgs/NavPathInfo")
(setf (get agv_msgs::NavPathInfo :definition-)
      "agv_msgs/ID id
time creation_time

uint8 type
uint8 UNKNOWN=0
uint8 MANUAL=1
uint8 RECORDED=2
uint8 IMPORTED=3

uint8 uncertainty
uint8 OK=0
uint8 UNCERTAIN=1

string name
std_msgs/ColorRGBA color
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :agv_msgs/NavPathInfo "15f56a45b039a39725c3469a1fbf2667")


