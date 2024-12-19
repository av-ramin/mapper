uint8 ST_IDLE = 0
uint8 ST_START = 1 
uint8 ST_OK = 2
uint8 ST_END = 3
uint8 ST_TRACKING_ERROR_HIGH = 4
uint8 ST_LATERAL_ERROR_HIGH = 5
uint8 ST_HEADING_ERROR_HIGH = 6
uint8 ST_ERROR = 7

uint8 state 
float64 lateral_error
float64 heading_error
float64 predicted_lateral_error
float64 predicted_heading_error
float64 travelled_trajectory_ratio
float64 stopping_position_on_trajectory
float64 target_centripetal_acceleration
float64 actual_centripetal_acceleration
float64 trajectory_centripetal_acceleration

Header trajectory_header
Header closest_point_header
float64 closest_point_offset
Header stopping_point_header
float64 stopping_point_offset