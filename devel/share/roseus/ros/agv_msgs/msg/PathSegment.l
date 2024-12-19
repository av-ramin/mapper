;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::PathSegment)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'PathSegment (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PATHSEGMENT")
  (make-package "AGV_MSGS::PATHSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude PathSegment.msg.html


(defclass agv_msgs::PathSegment
  :super ros::object
  :slots (_ids _info ))

(defmethod agv_msgs::PathSegment
  (:init
   (&key
    ((:ids __ids) ())
    ((:info __info) (instance agv_msgs::PathSegmentInfo :init))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _info __info)
   self)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID[] _ids
    (apply #'+ (send-all _ids :serialization-length)) 4
    ;; agv_msgs/PathSegmentInfo _info
    (send _info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (send elem :serialize s)
       )
     ;; agv_msgs/PathSegmentInfo _info
       (send _info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (let (r) (dotimes (i n) (push (instance agv_msgs::ID :init) r)) r))
     (dolist (elem- _ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_msgs/PathSegmentInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::PathSegment :md5sum-) "514c4a42318df3f68cc4c347460e4627")
(setf (get agv_msgs::PathSegment :datatype-) "agv_msgs/PathSegment")
(setf (get agv_msgs::PathSegment :definition-)
      "agv_msgs/ID[] ids
agv_msgs/PathSegmentInfo info
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/PathSegmentInfo
agv_msgs/ID id

uint8 type
uint8 UNKNOWN=0

string name
uint8[4] color
")



(provide :agv_msgs/PathSegment "514c4a42318df3f68cc4c347460e4627")


