;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::FollowmeStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'FollowmeStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::FOLLOWMESTATUS")
  (make-package "AGV_MSGS::FOLLOWMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude FollowmeStatus.msg.html


(intern "*DIRECT*" (find-package "AGV_MSGS::FOLLOWMESTATUS"))
(shadow '*DIRECT* (find-package "AGV_MSGS::FOLLOWMESTATUS"))
(defconstant agv_msgs::FollowmeStatus::*DIRECT* 1)
(intern "*INDIRECT*" (find-package "AGV_MSGS::FOLLOWMESTATUS"))
(shadow '*INDIRECT* (find-package "AGV_MSGS::FOLLOWMESTATUS"))
(defconstant agv_msgs::FollowmeStatus::*INDIRECT* 2)

(defun agv_msgs::FollowmeStatus-to-symbol (const)
  (cond
        ((= const 1) 'agv_msgs::FollowmeStatus::*DIRECT*)
        ((= const 2) 'agv_msgs::FollowmeStatus::*INDIRECT*)
        (t nil)))

(defclass agv_msgs::FollowmeStatus
  :super ros::object
  :slots (_distance_sp _angle_sp _live_distance _live_angle _velocity_limit _chosen_tag_name _dist_on_the_path _mode_indirect _start_active _pause_active _mode ))

(defmethod agv_msgs::FollowmeStatus
  (:init
   (&key
    ((:distance_sp __distance_sp) 0.0)
    ((:angle_sp __angle_sp) 0.0)
    ((:live_distance __live_distance) 0.0)
    ((:live_angle __live_angle) 0.0)
    ((:velocity_limit __velocity_limit) 0.0)
    ((:chosen_tag_name __chosen_tag_name) "")
    ((:dist_on_the_path __dist_on_the_path) 0.0)
    ((:mode_indirect __mode_indirect) 0)
    ((:start_active __start_active) nil)
    ((:pause_active __pause_active) nil)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _distance_sp (float __distance_sp))
   (setq _angle_sp (float __angle_sp))
   (setq _live_distance (float __live_distance))
   (setq _live_angle (float __live_angle))
   (setq _velocity_limit (float __velocity_limit))
   (setq _chosen_tag_name (string __chosen_tag_name))
   (setq _dist_on_the_path (float __dist_on_the_path))
   (setq _mode_indirect (round __mode_indirect))
   (setq _start_active __start_active)
   (setq _pause_active __pause_active)
   (setq _mode (round __mode))
   self)
  (:distance_sp
   (&optional __distance_sp)
   (if __distance_sp (setq _distance_sp __distance_sp)) _distance_sp)
  (:angle_sp
   (&optional __angle_sp)
   (if __angle_sp (setq _angle_sp __angle_sp)) _angle_sp)
  (:live_distance
   (&optional __live_distance)
   (if __live_distance (setq _live_distance __live_distance)) _live_distance)
  (:live_angle
   (&optional __live_angle)
   (if __live_angle (setq _live_angle __live_angle)) _live_angle)
  (:velocity_limit
   (&optional __velocity_limit)
   (if __velocity_limit (setq _velocity_limit __velocity_limit)) _velocity_limit)
  (:chosen_tag_name
   (&optional __chosen_tag_name)
   (if __chosen_tag_name (setq _chosen_tag_name __chosen_tag_name)) _chosen_tag_name)
  (:dist_on_the_path
   (&optional __dist_on_the_path)
   (if __dist_on_the_path (setq _dist_on_the_path __dist_on_the_path)) _dist_on_the_path)
  (:mode_indirect
   (&optional __mode_indirect)
   (if __mode_indirect (setq _mode_indirect __mode_indirect)) _mode_indirect)
  (:start_active
   (&optional (__start_active :null))
   (if (not (eq __start_active :null)) (setq _start_active __start_active)) _start_active)
  (:pause_active
   (&optional (__pause_active :null))
   (if (not (eq __pause_active :null)) (setq _pause_active __pause_active)) _pause_active)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float32 _distance_sp
    4
    ;; float32 _angle_sp
    4
    ;; float32 _live_distance
    4
    ;; float32 _live_angle
    4
    ;; float32 _velocity_limit
    4
    ;; string _chosen_tag_name
    4 (length _chosen_tag_name)
    ;; float32 _dist_on_the_path
    4
    ;; uint8 _mode_indirect
    1
    ;; bool _start_active
    1
    ;; bool _pause_active
    1
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance_sp
       (sys::poke _distance_sp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_sp
       (sys::poke _angle_sp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _live_distance
       (sys::poke _live_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _live_angle
       (sys::poke _live_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_limit
       (sys::poke _velocity_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _chosen_tag_name
       (write-long (length _chosen_tag_name) s) (princ _chosen_tag_name s)
     ;; float32 _dist_on_the_path
       (sys::poke _dist_on_the_path (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _mode_indirect
       (write-byte _mode_indirect s)
     ;; bool _start_active
       (if _start_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _pause_active
       (if _pause_active (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance_sp
     (setq _distance_sp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_sp
     (setq _angle_sp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _live_distance
     (setq _live_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _live_angle
     (setq _live_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_limit
     (setq _velocity_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _chosen_tag_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chosen_tag_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dist_on_the_path
     (setq _dist_on_the_path (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _mode_indirect
     (setq _mode_indirect (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _start_active
     (setq _start_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pause_active
     (setq _pause_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::FollowmeStatus :md5sum-) "352cd66af525f12fc4178354b47bfc2c")
(setf (get agv_msgs::FollowmeStatus :datatype-) "agv_msgs/FollowmeStatus")
(setf (get agv_msgs::FollowmeStatus :definition-)
      "float32 distance_sp
float32 angle_sp
float32 live_distance
float32 live_angle
float32 velocity_limit
string chosen_tag_name
float32 dist_on_the_path
uint8 mode_indirect
bool start_active
bool pause_active
uint8 mode
uint8 DIRECT=1
uint8 INDIRECT=2

")



(provide :agv_msgs/FollowmeStatus "352cd66af525f12fc4178354b47bfc2c")


