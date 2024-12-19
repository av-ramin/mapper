;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::RecordingStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'RecordingStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::RECORDINGSTATUS")
  (make-package "AGV_MSGS::RECORDINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RecordingStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::RecordingStatus
  :super ros::object
  :slots (_header _recorder_active _bag_name _bag_size_gb _free_space_gb ))

(defmethod agv_msgs::RecordingStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:recorder_active __recorder_active) nil)
    ((:bag_name __bag_name) "")
    ((:bag_size_gb __bag_size_gb) 0.0)
    ((:free_space_gb __free_space_gb) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _recorder_active __recorder_active)
   (setq _bag_name (string __bag_name))
   (setq _bag_size_gb (float __bag_size_gb))
   (setq _free_space_gb (float __free_space_gb))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:recorder_active
   (&optional (__recorder_active :null))
   (if (not (eq __recorder_active :null)) (setq _recorder_active __recorder_active)) _recorder_active)
  (:bag_name
   (&optional __bag_name)
   (if __bag_name (setq _bag_name __bag_name)) _bag_name)
  (:bag_size_gb
   (&optional __bag_size_gb)
   (if __bag_size_gb (setq _bag_size_gb __bag_size_gb)) _bag_size_gb)
  (:free_space_gb
   (&optional __free_space_gb)
   (if __free_space_gb (setq _free_space_gb __free_space_gb)) _free_space_gb)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _recorder_active
    1
    ;; string _bag_name
    4 (length _bag_name)
    ;; float32 _bag_size_gb
    4
    ;; float32 _free_space_gb
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _recorder_active
       (if _recorder_active (write-byte -1 s) (write-byte 0 s))
     ;; string _bag_name
       (write-long (length _bag_name) s) (princ _bag_name s)
     ;; float32 _bag_size_gb
       (sys::poke _bag_size_gb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _free_space_gb
       (sys::poke _free_space_gb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _recorder_active
     (setq _recorder_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _bag_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bag_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _bag_size_gb
     (setq _bag_size_gb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _free_space_gb
     (setq _free_space_gb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::RecordingStatus :md5sum-) "2a17c53f7b4ef4b7bd3c1b923d7ae852")
(setf (get agv_msgs::RecordingStatus :datatype-) "agv_msgs/RecordingStatus")
(setf (get agv_msgs::RecordingStatus :definition-)
      "Header header
bool recorder_active
string bag_name
float32 bag_size_gb
float32 free_space_gb

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



(provide :agv_msgs/RecordingStatus "2a17c53f7b4ef4b7bd3c1b923d7ae852")


