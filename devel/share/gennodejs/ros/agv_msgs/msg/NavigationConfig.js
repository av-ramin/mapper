// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NavigationConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.repeat_mode = null;
      this.no_of_loops = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('repeat_mode')) {
        this.repeat_mode = initObj.repeat_mode
      }
      else {
        this.repeat_mode = 0;
      }
      if (initObj.hasOwnProperty('no_of_loops')) {
        this.no_of_loops = initObj.no_of_loops
      }
      else {
        this.no_of_loops = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationConfig
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [repeat_mode]
    bufferOffset = _serializer.uint8(obj.repeat_mode, buffer, bufferOffset);
    // Serialize message field [no_of_loops]
    bufferOffset = _serializer.uint16(obj.no_of_loops, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationConfig
    let len;
    let data = new NavigationConfig(null);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [repeat_mode]
    data.repeat_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [no_of_loops]
    data.no_of_loops = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavigationConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb4f63e9ded9599f26fd23654a8fbe60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NavigationConfig(null);
    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.repeat_mode !== undefined) {
      resolved.repeat_mode = msg.repeat_mode;
    }
    else {
      resolved.repeat_mode = 0
    }

    if (msg.no_of_loops !== undefined) {
      resolved.no_of_loops = msg.no_of_loops;
    }
    else {
      resolved.no_of_loops = 0
    }

    return resolved;
    }
};

// Constants for message
NavigationConfig.Constants = {
  DIR_FORWARD: 0,
  DIR_CLOCKWISE: 0,
  DIR_REVERSE: 1,
  DIR_COUNTERCLOCKWISE: 1,
  REPEAT_NONE: 0,
  REPEAT_CIRCULAR: 1,
  REPEAT_DOUBLE_BACK: 2,
  INFINITE_LOOPS: 0,
  SINGLE_EXECUTION: 1,
}

module.exports = NavigationConfig;
