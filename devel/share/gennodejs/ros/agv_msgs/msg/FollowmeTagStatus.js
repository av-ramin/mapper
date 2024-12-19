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

class FollowmeTagStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dist_to_anchor = null;
      this.battery_lvl = null;
      this.signal_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('dist_to_anchor')) {
        this.dist_to_anchor = initObj.dist_to_anchor
      }
      else {
        this.dist_to_anchor = 0.0;
      }
      if (initObj.hasOwnProperty('battery_lvl')) {
        this.battery_lvl = initObj.battery_lvl
      }
      else {
        this.battery_lvl = 0;
      }
      if (initObj.hasOwnProperty('signal_quality')) {
        this.signal_quality = initObj.signal_quality
      }
      else {
        this.signal_quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowmeTagStatus
    // Serialize message field [dist_to_anchor]
    bufferOffset = _serializer.float32(obj.dist_to_anchor, buffer, bufferOffset);
    // Serialize message field [battery_lvl]
    bufferOffset = _serializer.uint8(obj.battery_lvl, buffer, bufferOffset);
    // Serialize message field [signal_quality]
    bufferOffset = _serializer.uint8(obj.signal_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowmeTagStatus
    let len;
    let data = new FollowmeTagStatus(null);
    // Deserialize message field [dist_to_anchor]
    data.dist_to_anchor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_lvl]
    data.battery_lvl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signal_quality]
    data.signal_quality = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/FollowmeTagStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13e8bc9b26611e630173d62b92a0ae8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 dist_to_anchor
    uint8 battery_lvl
    uint8 signal_quality
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowmeTagStatus(null);
    if (msg.dist_to_anchor !== undefined) {
      resolved.dist_to_anchor = msg.dist_to_anchor;
    }
    else {
      resolved.dist_to_anchor = 0.0
    }

    if (msg.battery_lvl !== undefined) {
      resolved.battery_lvl = msg.battery_lvl;
    }
    else {
      resolved.battery_lvl = 0
    }

    if (msg.signal_quality !== undefined) {
      resolved.signal_quality = msg.signal_quality;
    }
    else {
      resolved.signal_quality = 0
    }

    return resolved;
    }
};

module.exports = FollowmeTagStatus;
