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

class LightState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.freq = null;
      this.duty = null;
      this.periods_set = null;
      this.periods_remaining = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
      if (initObj.hasOwnProperty('duty')) {
        this.duty = initObj.duty
      }
      else {
        this.duty = 0.0;
      }
      if (initObj.hasOwnProperty('periods_set')) {
        this.periods_set = initObj.periods_set
      }
      else {
        this.periods_set = 0;
      }
      if (initObj.hasOwnProperty('periods_remaining')) {
        this.periods_remaining = initObj.periods_remaining
      }
      else {
        this.periods_remaining = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.float32(obj.freq, buffer, bufferOffset);
    // Serialize message field [duty]
    bufferOffset = _serializer.float32(obj.duty, buffer, bufferOffset);
    // Serialize message field [periods_set]
    bufferOffset = _serializer.uint32(obj.periods_set, buffer, bufferOffset);
    // Serialize message field [periods_remaining]
    bufferOffset = _serializer.uint32(obj.periods_remaining, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightState
    let len;
    let data = new LightState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duty]
    data.duty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [periods_set]
    data.periods_set = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [periods_remaining]
    data.periods_remaining = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/LightState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a84044d93bb2367d8d3d39575e7564b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float32 freq
    float32 duty
    uint32 periods_set
    uint32 periods_remaining
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    if (msg.duty !== undefined) {
      resolved.duty = msg.duty;
    }
    else {
      resolved.duty = 0.0
    }

    if (msg.periods_set !== undefined) {
      resolved.periods_set = msg.periods_set;
    }
    else {
      resolved.periods_set = 0
    }

    if (msg.periods_remaining !== undefined) {
      resolved.periods_remaining = msg.periods_remaining;
    }
    else {
      resolved.periods_remaining = 0
    }

    return resolved;
    }
};

module.exports = LightState;
