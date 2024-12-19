// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrajectoryControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.lateral_error = null;
      this.heading_error = null;
      this.predicted_lateral_error = null;
      this.predicted_heading_error = null;
      this.travelled_trajectory_ratio = null;
      this.stopping_position_on_trajectory = null;
      this.target_centripetal_acceleration = null;
      this.actual_centripetal_acceleration = null;
      this.trajectory_centripetal_acceleration = null;
      this.trajectory_header = null;
      this.closest_point_header = null;
      this.closest_point_offset = null;
      this.stopping_point_header = null;
      this.stopping_point_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('lateral_error')) {
        this.lateral_error = initObj.lateral_error
      }
      else {
        this.lateral_error = 0.0;
      }
      if (initObj.hasOwnProperty('heading_error')) {
        this.heading_error = initObj.heading_error
      }
      else {
        this.heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('predicted_lateral_error')) {
        this.predicted_lateral_error = initObj.predicted_lateral_error
      }
      else {
        this.predicted_lateral_error = 0.0;
      }
      if (initObj.hasOwnProperty('predicted_heading_error')) {
        this.predicted_heading_error = initObj.predicted_heading_error
      }
      else {
        this.predicted_heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('travelled_trajectory_ratio')) {
        this.travelled_trajectory_ratio = initObj.travelled_trajectory_ratio
      }
      else {
        this.travelled_trajectory_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('stopping_position_on_trajectory')) {
        this.stopping_position_on_trajectory = initObj.stopping_position_on_trajectory
      }
      else {
        this.stopping_position_on_trajectory = 0.0;
      }
      if (initObj.hasOwnProperty('target_centripetal_acceleration')) {
        this.target_centripetal_acceleration = initObj.target_centripetal_acceleration
      }
      else {
        this.target_centripetal_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('actual_centripetal_acceleration')) {
        this.actual_centripetal_acceleration = initObj.actual_centripetal_acceleration
      }
      else {
        this.actual_centripetal_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_centripetal_acceleration')) {
        this.trajectory_centripetal_acceleration = initObj.trajectory_centripetal_acceleration
      }
      else {
        this.trajectory_centripetal_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_header')) {
        this.trajectory_header = initObj.trajectory_header
      }
      else {
        this.trajectory_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('closest_point_header')) {
        this.closest_point_header = initObj.closest_point_header
      }
      else {
        this.closest_point_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('closest_point_offset')) {
        this.closest_point_offset = initObj.closest_point_offset
      }
      else {
        this.closest_point_offset = 0.0;
      }
      if (initObj.hasOwnProperty('stopping_point_header')) {
        this.stopping_point_header = initObj.stopping_point_header
      }
      else {
        this.stopping_point_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stopping_point_offset')) {
        this.stopping_point_offset = initObj.stopping_point_offset
      }
      else {
        this.stopping_point_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryControllerState
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [lateral_error]
    bufferOffset = _serializer.float64(obj.lateral_error, buffer, bufferOffset);
    // Serialize message field [heading_error]
    bufferOffset = _serializer.float64(obj.heading_error, buffer, bufferOffset);
    // Serialize message field [predicted_lateral_error]
    bufferOffset = _serializer.float64(obj.predicted_lateral_error, buffer, bufferOffset);
    // Serialize message field [predicted_heading_error]
    bufferOffset = _serializer.float64(obj.predicted_heading_error, buffer, bufferOffset);
    // Serialize message field [travelled_trajectory_ratio]
    bufferOffset = _serializer.float64(obj.travelled_trajectory_ratio, buffer, bufferOffset);
    // Serialize message field [stopping_position_on_trajectory]
    bufferOffset = _serializer.float64(obj.stopping_position_on_trajectory, buffer, bufferOffset);
    // Serialize message field [target_centripetal_acceleration]
    bufferOffset = _serializer.float64(obj.target_centripetal_acceleration, buffer, bufferOffset);
    // Serialize message field [actual_centripetal_acceleration]
    bufferOffset = _serializer.float64(obj.actual_centripetal_acceleration, buffer, bufferOffset);
    // Serialize message field [trajectory_centripetal_acceleration]
    bufferOffset = _serializer.float64(obj.trajectory_centripetal_acceleration, buffer, bufferOffset);
    // Serialize message field [trajectory_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.trajectory_header, buffer, bufferOffset);
    // Serialize message field [closest_point_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.closest_point_header, buffer, bufferOffset);
    // Serialize message field [closest_point_offset]
    bufferOffset = _serializer.float64(obj.closest_point_offset, buffer, bufferOffset);
    // Serialize message field [stopping_point_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.stopping_point_header, buffer, bufferOffset);
    // Serialize message field [stopping_point_offset]
    bufferOffset = _serializer.float64(obj.stopping_point_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryControllerState
    let len;
    let data = new TrajectoryControllerState(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lateral_error]
    data.lateral_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_error]
    data.heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predicted_lateral_error]
    data.predicted_lateral_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predicted_heading_error]
    data.predicted_heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [travelled_trajectory_ratio]
    data.travelled_trajectory_ratio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stopping_position_on_trajectory]
    data.stopping_position_on_trajectory = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_centripetal_acceleration]
    data.target_centripetal_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actual_centripetal_acceleration]
    data.actual_centripetal_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_centripetal_acceleration]
    data.trajectory_centripetal_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_header]
    data.trajectory_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_point_header]
    data.closest_point_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_point_offset]
    data.closest_point_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stopping_point_header]
    data.stopping_point_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stopping_point_offset]
    data.stopping_point_offset = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.trajectory_header);
    length += std_msgs.msg.Header.getMessageSize(object.closest_point_header);
    length += std_msgs.msg.Header.getMessageSize(object.stopping_point_header);
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/TrajectoryControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '350099b8a58862f1bbb2702387d2460d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryControllerState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.lateral_error !== undefined) {
      resolved.lateral_error = msg.lateral_error;
    }
    else {
      resolved.lateral_error = 0.0
    }

    if (msg.heading_error !== undefined) {
      resolved.heading_error = msg.heading_error;
    }
    else {
      resolved.heading_error = 0.0
    }

    if (msg.predicted_lateral_error !== undefined) {
      resolved.predicted_lateral_error = msg.predicted_lateral_error;
    }
    else {
      resolved.predicted_lateral_error = 0.0
    }

    if (msg.predicted_heading_error !== undefined) {
      resolved.predicted_heading_error = msg.predicted_heading_error;
    }
    else {
      resolved.predicted_heading_error = 0.0
    }

    if (msg.travelled_trajectory_ratio !== undefined) {
      resolved.travelled_trajectory_ratio = msg.travelled_trajectory_ratio;
    }
    else {
      resolved.travelled_trajectory_ratio = 0.0
    }

    if (msg.stopping_position_on_trajectory !== undefined) {
      resolved.stopping_position_on_trajectory = msg.stopping_position_on_trajectory;
    }
    else {
      resolved.stopping_position_on_trajectory = 0.0
    }

    if (msg.target_centripetal_acceleration !== undefined) {
      resolved.target_centripetal_acceleration = msg.target_centripetal_acceleration;
    }
    else {
      resolved.target_centripetal_acceleration = 0.0
    }

    if (msg.actual_centripetal_acceleration !== undefined) {
      resolved.actual_centripetal_acceleration = msg.actual_centripetal_acceleration;
    }
    else {
      resolved.actual_centripetal_acceleration = 0.0
    }

    if (msg.trajectory_centripetal_acceleration !== undefined) {
      resolved.trajectory_centripetal_acceleration = msg.trajectory_centripetal_acceleration;
    }
    else {
      resolved.trajectory_centripetal_acceleration = 0.0
    }

    if (msg.trajectory_header !== undefined) {
      resolved.trajectory_header = std_msgs.msg.Header.Resolve(msg.trajectory_header)
    }
    else {
      resolved.trajectory_header = new std_msgs.msg.Header()
    }

    if (msg.closest_point_header !== undefined) {
      resolved.closest_point_header = std_msgs.msg.Header.Resolve(msg.closest_point_header)
    }
    else {
      resolved.closest_point_header = new std_msgs.msg.Header()
    }

    if (msg.closest_point_offset !== undefined) {
      resolved.closest_point_offset = msg.closest_point_offset;
    }
    else {
      resolved.closest_point_offset = 0.0
    }

    if (msg.stopping_point_header !== undefined) {
      resolved.stopping_point_header = std_msgs.msg.Header.Resolve(msg.stopping_point_header)
    }
    else {
      resolved.stopping_point_header = new std_msgs.msg.Header()
    }

    if (msg.stopping_point_offset !== undefined) {
      resolved.stopping_point_offset = msg.stopping_point_offset;
    }
    else {
      resolved.stopping_point_offset = 0.0
    }

    return resolved;
    }
};

// Constants for message
TrajectoryControllerState.Constants = {
  ST_IDLE: 0,
  ST_START: 1,
  ST_OK: 2,
  ST_END: 3,
  ST_TRACKING_ERROR_HIGH: 4,
  ST_LATERAL_ERROR_HIGH: 5,
  ST_HEADING_ERROR_HIGH: 6,
  ST_ERROR: 7,
}

module.exports = TrajectoryControllerState;
