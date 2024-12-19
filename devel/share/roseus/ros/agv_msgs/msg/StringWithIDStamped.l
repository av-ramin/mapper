;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::StringWithIDStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'StringWithIDStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::STRINGWITHIDSTAMPED")
  (make-package "AGV_MSGS::STRINGWITHIDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringWithIDStamped.msg.html


(defclass agv_msgs::StringWithIDStamped
  :super ros::object
  :slots (_id _data _creation_time ))

(defmethod agv_msgs::StringWithIDStamped
  (:init
   (&key
    ((:id __id) 0)
    ((:data __data) "")
    ((:creation_time __creation_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _data (string __data))
   (setq _creation_time __creation_time)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:creation_time
   (&optional __creation_time)
   (if __creation_time (setq _creation_time __creation_time)) _creation_time)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _data
    4 (length _data)
    ;; time _creation_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; time _creation_time
       (write-long (send _creation_time :sec) s) (write-long (send _creation_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _creation_time
     (send _creation_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _creation_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::StringWithIDStamped :md5sum-) "16d2a98e7f794a9581e118f4dada7d23")
(setf (get agv_msgs::StringWithIDStamped :datatype-) "agv_msgs/StringWithIDStamped")
(setf (get agv_msgs::StringWithIDStamped :definition-)
      "uint32 id
string data
time creation_time
")



(provide :agv_msgs/StringWithIDStamped "16d2a98e7f794a9581e118f4dada7d23")


