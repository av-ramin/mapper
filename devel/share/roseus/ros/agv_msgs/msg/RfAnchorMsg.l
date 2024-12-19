;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::RfAnchorMsg)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'RfAnchorMsg (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::RFANCHORMSG")
  (make-package "AGV_MSGS::RFANCHORMSG"))

(in-package "ROS")
;;//! \htmlinclude RfAnchorMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::RfAnchorMsg
  :super ros::object
  :slots (_header _anchor_addr ))

(defmethod agv_msgs::RfAnchorMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:anchor_addr __anchor_addr) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _anchor_addr (string __anchor_addr))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:anchor_addr
   (&optional __anchor_addr)
   (if __anchor_addr (setq _anchor_addr __anchor_addr)) _anchor_addr)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _anchor_addr
    4 (length _anchor_addr)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _anchor_addr
       (write-long (length _anchor_addr) s) (princ _anchor_addr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _anchor_addr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _anchor_addr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get agv_msgs::RfAnchorMsg :md5sum-) "baf38b7875de64b2012ac42bc0eb4d29")
(setf (get agv_msgs::RfAnchorMsg :datatype-) "agv_msgs/RfAnchorMsg")
(setf (get agv_msgs::RfAnchorMsg :definition-)
      "Header header
string anchor_addr

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :agv_msgs/RfAnchorMsg "baf38b7875de64b2012ac42bc0eb4d29")


