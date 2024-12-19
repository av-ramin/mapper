// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ID = require('./ID.js');
let NavigationConfig = require('./NavigationConfig.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavigationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path_id = null;
      this.current_waypoint_id = null;
      this.active = null;
      this.paused = null;
      this.mode = null;
      this.config = null;
      this.loop_iteration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path_id')) {
        this.path_id = initObj.path_id
      }
      else {
        this.path_id = new ID();
      }
      if (initObj.hasOwnProperty('current_waypoint_id')) {
        this.current_waypoint_id = initObj.current_waypoint_id
      }
      else {
        this.current_waypoint_id = new ID();
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('paused')) {
        this.paused = initObj.paused
      }
      else {
        this.paused = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new NavigationConfig();
      }
      if (initObj.hasOwnProperty('loop_iteration')) {
        this.loop_iteration = initObj.loop_iteration
      }
      else {
        this.loop_iteration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path_id]
    bufferOffset = ID.serialize(obj.path_id, buffer, bufferOffset);
    // Serialize message field [current_waypoint_id]
    bufferOffset = ID.serialize(obj.current_waypoint_id, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [paused]
    bufferOffset = _serializer.bool(obj.paused, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = NavigationConfig.serialize(obj.config, buffer, bufferOffset);
    // Serialize message field [loop_iteration]
    bufferOffset = _serializer.uint16(obj.loop_iteration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationStatus
    let len;
    let data = new NavigationStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_id]
    data.path_id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_waypoint_id]
    data.current_waypoint_id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [paused]
    data.paused = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = NavigationConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [loop_iteration]
    data.loop_iteration = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavigationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a149a87a3a79c58017a11d4e6e8cb71c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: agv_msgs/NavigationConfig
    uint8 direction
    uint8 DIR_FORWARD=0
    uint8 DIR_CLOCKWISE=0
    uint8 DIR_REVERSE=1
    uint8 DIR_COUNTERCLOCKWISE=1
    
    uint8 repeat_mode
    uint8 REPEAT_NONE=0
    uint8 REPEAT_CIRCULAR=1
    uint8 REPEAT_DOUBLE_BACK=2
    
    uint16 no_of_loops
    uint8 INFINITE_LOOPS = 0
    uint8 SINGLE_EXECUTION = 1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path_id !== undefined) {
      resolved.path_id = ID.Resolve(msg.path_id)
    }
    else {
      resolved.path_id = new ID()
    }

    if (msg.current_waypoint_id !== undefined) {
      resolved.current_waypoint_id = ID.Resolve(msg.current_waypoint_id)
    }
    else {
      resolved.current_waypoint_id = new ID()
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.paused !== undefined) {
      resolved.paused = msg.paused;
    }
    else {
      resolved.paused = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.config !== undefined) {
      resolved.config = NavigationConfig.Resolve(msg.config)
    }
    else {
      resolved.config = new NavigationConfig()
    }

    if (msg.loop_iteration !== undefined) {
      resolved.loop_iteration = msg.loop_iteration;
    }
    else {
      resolved.loop_iteration = 0
    }

    return resolved;
    }
};

// Constants for message
NavigationStatus.Constants = {
  UNKNOWN: 0,
  NAVIGATION: 1,
  RALLY_POINT: 2,
  RECORDER: 3,
  START_ITERATION: 1,
}

module.exports = NavigationStatus;
