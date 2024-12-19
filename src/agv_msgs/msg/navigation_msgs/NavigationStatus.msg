Header header
agv_msgs/ID path_id
agv_msgs/ID current_waypoint_id
bool active
bool paused

uint8 mode
uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 RALLY_POINT = 2
uint8 RECORDER = 3

agv_msgs/NavigationConfig config
uint16 loop_iteration
uint8 START_ITERATION = 1