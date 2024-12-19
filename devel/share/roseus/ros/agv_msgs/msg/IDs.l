;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::IDs)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'IDs (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::IDS")
  (make-package "AGV_MSGS::IDS"))

(in-package "ROS")
;;//! \htmlinclude IDs.msg.html


(defclass agv_msgs::IDs
  :super ros::object
  :slots (_ids ))

(defmethod agv_msgs::IDs
  (:init
   (&key
    ((:ids __ids) ())
    )
   (send-super :init)
   (setq _ids __ids)
   self)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID[] _ids
    (apply #'+ (send-all _ids :serialization-length)) 4
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
   ;;
   self)
  )

(setf (get agv_msgs::IDs :md5sum-) "d86b5640038c0900844695683d4a6029")
(setf (get agv_msgs::IDs :datatype-) "agv_msgs/IDs")
(setf (get agv_msgs::IDs :definition-)
      "agv_msgs/ID[] ids
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/IDs "d86b5640038c0900844695683d4a6029")


