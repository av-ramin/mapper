// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LightState = require('./LightState.js');

//-----------------------------------------------------------

class LightsState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightsState
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = LightState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightsState
    let len;
    let data = new LightsState(null);
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = LightState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.states.forEach((val) => {
      length += LightState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/LightsState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be4eb97b3931f6aab3264f5b626bd43a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/LightState[] states
    ================================================================================
    MSG: agv_msgs/LightState
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
    const resolved = new LightsState(null);
    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = LightState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = LightsState;
