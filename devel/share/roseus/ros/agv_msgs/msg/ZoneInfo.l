;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ZoneInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ZoneInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ZONEINFO")
  (make-package "AGV_MSGS::ZONEINFO"))

(in-package "ROS")
;;//! \htmlinclude ZoneInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::ZoneInfo
  :super ros::object
  :slots (_id _group _name _color _properties _visible _creation_time ))

(defmethod agv_msgs::ZoneInfo
  (:init
   (&key
    ((:id __id) (instance agv_msgs::ID :init))
    ((:group __group) "")
    ((:name __name) "")
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:properties __properties) ())
    ((:visible __visible) nil)
    ((:creation_time __creation_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _group (string __group))
   (setq _name (string __name))
   (setq _color __color)
   (setq _properties __properties)
   (setq _visible __visible)
   (setq _creation_time __creation_time)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
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
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:visible
   (&optional (__visible :null))
   (if (not (eq __visible :null)) (setq _visible __visible)) _visible)
  (:creation_time
   (&optional __creation_time)
   (if __creation_time (setq _creation_time __creation_time)) _creation_time)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _id
    (send _id :serialization-length)
    ;; string _group
    4 (length _group)
    ;; string _name
    4 (length _name)
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; agv_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ;; bool _visible
    1
    ;; time _creation_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _id
       (send _id :serialize s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; agv_msgs/KeyValue[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;; bool _visible
       (if _visible (write-byte -1 s) (write-byte 0 s))
     ;; time _creation_time
       (write-long (send _creation_time :sec) s) (write-long (send _creation_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; agv_msgs/KeyValue[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance agv_msgs::KeyValue :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _visible
     (setq _visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _creation_time
     (send _creation_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _creation_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::ZoneInfo :md5sum-) "23fe4a88c361ecd57494678a1faa3171")
(setf (get agv_msgs::ZoneInfo :datatype-) "agv_msgs/ZoneInfo")
(setf (get agv_msgs::ZoneInfo :definition-)
      "agv_msgs/ID id
string group
string name
std_msgs/ColorRGBA color
agv_msgs/KeyValue[] properties
bool visible
time creation_time
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

================================================================================
MSG: agv_msgs/KeyValue
string key
string value
")



(provide :agv_msgs/ZoneInfo "23fe4a88c361ecd57494678a1faa3171")


