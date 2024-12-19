;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::RfTagInfo)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'RfTagInfo (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::RFTAGINFO")
  (make-package "AGV_MSGS::RFTAGINFO"))

(in-package "ROS")
;;//! \htmlinclude RfTagInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::RfTagInfo
  :super ros::object
  :slots (_header _tag_addr _anchor_addr _dist_to_anchor _tag_frame _btn0_state _btn1_state _btn2_state _battery_lvl _first_path_power _received_signal_strength _covariance ))

(defmethod agv_msgs::RfTagInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tag_addr __tag_addr) "")
    ((:anchor_addr __anchor_addr) "")
    ((:dist_to_anchor __dist_to_anchor) 0.0)
    ((:tag_frame __tag_frame) 0)
    ((:btn0_state __btn0_state) nil)
    ((:btn1_state __btn1_state) nil)
    ((:btn2_state __btn2_state) nil)
    ((:battery_lvl __battery_lvl) 0)
    ((:first_path_power __first_path_power) 0.0)
    ((:received_signal_strength __received_signal_strength) 0.0)
    ((:covariance __covariance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tag_addr (string __tag_addr))
   (setq _anchor_addr (string __anchor_addr))
   (setq _dist_to_anchor (float __dist_to_anchor))
   (setq _tag_frame (round __tag_frame))
   (setq _btn0_state __btn0_state)
   (setq _btn1_state __btn1_state)
   (setq _btn2_state __btn2_state)
   (setq _battery_lvl (round __battery_lvl))
   (setq _first_path_power (float __first_path_power))
   (setq _received_signal_strength (float __received_signal_strength))
   (setq _covariance (float __covariance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tag_addr
   (&optional __tag_addr)
   (if __tag_addr (setq _tag_addr __tag_addr)) _tag_addr)
  (:anchor_addr
   (&optional __anchor_addr)
   (if __anchor_addr (setq _anchor_addr __anchor_addr)) _anchor_addr)
  (:dist_to_anchor
   (&optional __dist_to_anchor)
   (if __dist_to_anchor (setq _dist_to_anchor __dist_to_anchor)) _dist_to_anchor)
  (:tag_frame
   (&optional __tag_frame)
   (if __tag_frame (setq _tag_frame __tag_frame)) _tag_frame)
  (:btn0_state
   (&optional (__btn0_state :null))
   (if (not (eq __btn0_state :null)) (setq _btn0_state __btn0_state)) _btn0_state)
  (:btn1_state
   (&optional (__btn1_state :null))
   (if (not (eq __btn1_state :null)) (setq _btn1_state __btn1_state)) _btn1_state)
  (:btn2_state
   (&optional (__btn2_state :null))
   (if (not (eq __btn2_state :null)) (setq _btn2_state __btn2_state)) _btn2_state)
  (:battery_lvl
   (&optional __battery_lvl)
   (if __battery_lvl (setq _battery_lvl __battery_lvl)) _battery_lvl)
  (:first_path_power
   (&optional __first_path_power)
   (if __first_path_power (setq _first_path_power __first_path_power)) _first_path_power)
  (:received_signal_strength
   (&optional __received_signal_strength)
   (if __received_signal_strength (setq _received_signal_strength __received_signal_strength)) _received_signal_strength)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _tag_addr
    4 (length _tag_addr)
    ;; string _anchor_addr
    4 (length _anchor_addr)
    ;; float32 _dist_to_anchor
    4
    ;; uint8 _tag_frame
    1
    ;; bool _btn0_state
    1
    ;; bool _btn1_state
    1
    ;; bool _btn2_state
    1
    ;; uint8 _battery_lvl
    1
    ;; float32 _first_path_power
    4
    ;; float32 _received_signal_strength
    4
    ;; float32 _covariance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _tag_addr
       (write-long (length _tag_addr) s) (princ _tag_addr s)
     ;; string _anchor_addr
       (write-long (length _anchor_addr) s) (princ _anchor_addr s)
     ;; float32 _dist_to_anchor
       (sys::poke _dist_to_anchor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _tag_frame
       (write-byte _tag_frame s)
     ;; bool _btn0_state
       (if _btn0_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn1_state
       (if _btn1_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _btn2_state
       (if _btn2_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _battery_lvl
       (write-byte _battery_lvl s)
     ;; float32 _first_path_power
       (sys::poke _first_path_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _received_signal_strength
       (sys::poke _received_signal_strength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _covariance
       (sys::poke _covariance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _tag_addr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_addr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _anchor_addr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _anchor_addr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dist_to_anchor
     (setq _dist_to_anchor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _tag_frame
     (setq _tag_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _btn0_state
     (setq _btn0_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn1_state
     (setq _btn1_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _btn2_state
     (setq _btn2_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _battery_lvl
     (setq _battery_lvl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _first_path_power
     (setq _first_path_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _received_signal_strength
     (setq _received_signal_strength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _covariance
     (setq _covariance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::RfTagInfo :md5sum-) "b788a49c92ea14828852cd337a50704a")
(setf (get agv_msgs::RfTagInfo :datatype-) "agv_msgs/RfTagInfo")
(setf (get agv_msgs::RfTagInfo :definition-)
      "Header header
string tag_addr
string anchor_addr
float32 dist_to_anchor
uint8 tag_frame
bool btn0_state
bool btn1_state
bool btn2_state
uint8 battery_lvl
float32 first_path_power
float32 received_signal_strength
float32 covariance

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



(provide :agv_msgs/RfTagInfo "b788a49c92ea14828852cd337a50704a")


