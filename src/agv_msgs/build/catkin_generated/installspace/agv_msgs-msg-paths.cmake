# generated from genmsg/cmake/pkg-msg-paths.cmake.installspace.in

_prepend_path("${agv_msgs_DIR}/.." "msg/common_msgs;msg/control_msgs;msg/localization_msgs;msg/navigation_msgs;msg/navigation_msgs/followme_msgs;msg/perception_msgs;msg/sensor_msgs;msg/diagnostic_msgs" agv_msgs_MSG_INCLUDE_DIRS UNIQUE)
set(agv_msgs_MSG_DEPENDENCIES std_msgs;geometry_msgs;sensor_msgs;nav_msgs;jsk_recognition_msgs;shape_msgs)
