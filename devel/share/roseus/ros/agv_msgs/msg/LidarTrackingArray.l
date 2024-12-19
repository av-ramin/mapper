;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::LidarTrackingArray)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'LidarTrackingArray (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LIDARTRACKINGARRAY")
  (make-package "AGV_MSGS::LIDARTRACKINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude LidarTrackingArray.msg.html
(if (not (find-package "JSK_RECOGNITION_MSGS"))
  (ros::roseus-add-msgs "jsk_recognition_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::LidarTrackingArray
  :super ros::object
  :slots (_ids _bboxes ))

(defmethod agv_msgs::LidarTrackingArray
  (:init
   (&key
    ((:ids __ids) (instance std_msgs::Int64MultiArray :init))
    ((:bboxes __bboxes) (instance jsk_recognition_msgs::BoundingBoxArray :init))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _bboxes __bboxes)
   self)
  (:ids
   (&rest __ids)
   (if (keywordp (car __ids))
       (send* _ids __ids)
     (progn
       (if __ids (setq _ids (car __ids)))
       _ids)))
  (:bboxes
   (&rest __bboxes)
   (if (keywordp (car __bboxes))
       (send* _bboxes __bboxes)
     (progn
       (if __bboxes (setq _bboxes (car __bboxes)))
       _bboxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int64MultiArray _ids
    (send _ids :serialization-length)
    ;; jsk_recognition_msgs/BoundingBoxArray _bboxes
    (send _bboxes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int64MultiArray _ids
       (send _ids :serialize s)
     ;; jsk_recognition_msgs/BoundingBoxArray _bboxes
       (send _bboxes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int64MultiArray _ids
     (send _ids :deserialize buf ptr-) (incf ptr- (send _ids :serialization-length))
   ;; jsk_recognition_msgs/BoundingBoxArray _bboxes
     (send _bboxes :deserialize buf ptr-) (incf ptr- (send _bboxes :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::LidarTrackingArray :md5sum-) "941673c615d47028c6cf33c8aedc0d50")
(setf (get agv_msgs::LidarTrackingArray :datatype-) "agv_msgs/LidarTrackingArray")
(setf (get agv_msgs::LidarTrackingArray :definition-)
      "std_msgs/Int64MultiArray ids
jsk_recognition_msgs/BoundingBoxArray bboxes
================================================================================
MSG: std_msgs/Int64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int64[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: jsk_recognition_msgs/BoundingBoxArray
# BoundingBoxArray is a list of BoundingBox.
# You can use jsk_rviz_plugins to visualize BoungingBoxArray on rviz.
Header header
BoundingBox[] boxes

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

================================================================================
MSG: jsk_recognition_msgs/BoundingBox
# BoundingBox represents a oriented bounding box.
Header header
geometry_msgs/Pose pose
geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)
# You can use this field to hold value such as likelihood
float32 value
uint32 label

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :agv_msgs/LidarTrackingArray "941673c615d47028c6cf33c8aedc0d50")


