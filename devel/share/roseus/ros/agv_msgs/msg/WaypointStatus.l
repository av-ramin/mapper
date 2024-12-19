;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointStatus)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointStatus (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTSTATUS")
  (make-package "AGV_MSGS::WAYPOINTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WaypointStatus.msg.html


(defclass agv_msgs::WaypointStatus
  :super ros::object
  :slots (_goal_id _state _radius _road _intersection ))

(defmethod agv_msgs::WaypointStatus
  (:init
   (&key
    ((:goal_id __goal_id) (instance agv_msgs::ID :init))
    ((:state __state) 0)
    ((:radius __radius) 0.0)
    ((:road __road) nil)
    ((:intersection __intersection) nil)
    )
   (send-super :init)
   (setq _goal_id __goal_id)
   (setq _state (round __state))
   (setq _radius (float __radius))
   (setq _road __road)
   (setq _intersection __intersection)
   self)
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:road
   (&optional (__road :null))
   (if (not (eq __road :null)) (setq _road __road)) _road)
  (:intersection
   (&optional (__intersection :null))
   (if (not (eq __intersection :null)) (setq _intersection __intersection)) _intersection)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/ID _goal_id
    (send _goal_id :serialization-length)
    ;; uint8 _state
    1
    ;; float32 _radius
    4
    ;; bool _road
    1
    ;; bool _intersection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/ID _goal_id
       (send _goal_id :serialize s)
     ;; uint8 _state
       (write-byte _state s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _road
       (if _road (write-byte -1 s) (write-byte 0 s))
     ;; bool _intersection
       (if _intersection (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/ID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _road
     (setq _road (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _intersection
     (setq _intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::WaypointStatus :md5sum-) "62191f205a4471b269c61732e2f09cee")
(setf (get agv_msgs::WaypointStatus :datatype-) "agv_msgs/WaypointStatus")
(setf (get agv_msgs::WaypointStatus :definition-)
      "agv_msgs/ID goal_id
uint8 state # contins actionlib::SimpleClientGoalState state
float32 radius
bool road
bool intersection
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

")



(provide :agv_msgs/WaypointStatus "62191f205a4471b269c61732e2f09cee")


