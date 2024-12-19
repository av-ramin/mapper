Header  header
float32 data

uint8 status
uint8 OK=0
uint8 OK_BUT_TOO_SHAKY=1
uint8 STARTING=2
uint8 INIT=3
uint8 DATA_MISSING=4
uint8 PROXIMITY_SLOW=5
uint8 PROXIMITY_ALERT=6
uint8 STOP=10
uint8 FORWARD=11
uint8 BACKWARD=12
uint8 EMPTY=13
uint8 ALL_ZEROES=14

# Statuses for using with proximity safety:
# 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)
# 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)
# 2 - starting up (data is time since beginning of starting)
# 3 - initializing - data is flowing (data is time since beginning of init)
# 4 - data missing (data is time since last data)
# 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)
# 6 - proximity alert (data is distance to obstacle)
