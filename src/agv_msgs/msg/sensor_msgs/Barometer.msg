Header header

float64 pressure # Pa
float64 altitude

# 0 is interpreted as variance unknown
float64 pressure_variance
float64 altitude_variance

# EPSG code of the vertical datum used for altitude, e.g. 4326 for WGS84.
# Set to 0 when altitude is not referenced against any datum.
uint16 altitude_datum
