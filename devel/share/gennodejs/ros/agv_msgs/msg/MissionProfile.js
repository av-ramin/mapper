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

//-----------------------------------------------------------

class MissionProfile {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_id = null;
      this.config = null;
      this.behaviors = null;
      this.zones = null;
    }
    else {
      if (initObj.hasOwnProperty('path_id')) {
        this.path_id = initObj.path_id
      }
      else {
        this.path_id = new ID();
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new NavigationConfig();
      }
      if (initObj.hasOwnProperty('behaviors')) {
        this.behaviors = initObj.behaviors
      }
      else {
        this.behaviors = [];
      }
      if (initObj.hasOwnProperty('zones')) {
        this.zones = initObj.zones
      }
      else {
        this.zones = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionProfile
    // Serialize message field [path_id]
    bufferOffset = ID.serialize(obj.path_id, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = NavigationConfig.serialize(obj.config, buffer, bufferOffset);
    // Serialize message field [behaviors]
    // Serialize the length for message field [behaviors]
    bufferOffset = _serializer.uint32(obj.behaviors.length, buffer, bufferOffset);
    obj.behaviors.forEach((val) => {
      bufferOffset = ID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [zones]
    // Serialize the length for message field [zones]
    bufferOffset = _serializer.uint32(obj.zones.length, buffer, bufferOffset);
    obj.zones.forEach((val) => {
      bufferOffset = ID.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionProfile
    let len;
    let data = new MissionProfile(null);
    // Deserialize message field [path_id]
    data.path_id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = NavigationConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [behaviors]
    // Deserialize array length for message field [behaviors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.behaviors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.behaviors[i] = ID.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [zones]
    // Deserialize array length for message field [zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.zones[i] = ID.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.behaviors.length;
    length += 4 * object.zones.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/MissionProfile';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bafac555455751c88b658e71984a8344';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID path_id
    agv_msgs/NavigationConfig config
    agv_msgs/ID[] behaviors
    agv_msgs/ID[] zones
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
    const resolved = new MissionProfile(null);
    if (msg.path_id !== undefined) {
      resolved.path_id = ID.Resolve(msg.path_id)
    }
    else {
      resolved.path_id = new ID()
    }

    if (msg.config !== undefined) {
      resolved.config = NavigationConfig.Resolve(msg.config)
    }
    else {
      resolved.config = new NavigationConfig()
    }

    if (msg.behaviors !== undefined) {
      resolved.behaviors = new Array(msg.behaviors.length);
      for (let i = 0; i < resolved.behaviors.length; ++i) {
        resolved.behaviors[i] = ID.Resolve(msg.behaviors[i]);
      }
    }
    else {
      resolved.behaviors = []
    }

    if (msg.zones !== undefined) {
      resolved.zones = new Array(msg.zones.length);
      for (let i = 0; i < resolved.zones.length; ++i) {
        resolved.zones[i] = ID.Resolve(msg.zones[i]);
      }
    }
    else {
      resolved.zones = []
    }

    return resolved;
    }
};

module.exports = MissionProfile;
