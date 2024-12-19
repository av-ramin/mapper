;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ServiceResponseInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ServiceResponseInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SERVICERESPONSEINFO")
  (make-package "AGV_MSGS::SERVICERESPONSEINFO"))

(in-package "ROS")
;;//! \htmlinclude ServiceResponseInfo.msg.html


(defclass agv_msgs::ServiceResponseInfo
  :super ros::object
  :slots (_success _message ))

(defmethod agv_msgs::ServiceResponseInfo
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get agv_msgs::ServiceResponseInfo :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get agv_msgs::ServiceResponseInfo :datatype-) "agv_msgs/ServiceResponseInfo")
(setf (get agv_msgs::ServiceResponseInfo :definition-)
      "bool success
string message
")



(provide :agv_msgs/ServiceResponseInfo "937c9679a518e3a18d831e57125ea522")

