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

class SetLightState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.frequency = null;
      this.duty = null;
      this.num_periods = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('duty')) {
        this.duty = initObj.duty
      }
      else {
        this.duty = 0.0;
      }
      if (initObj.hasOwnProperty('num_periods')) {
        this.num_periods = initObj.num_periods
      }
      else {
        this.num_periods = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLightState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [duty]
    bufferOffset = _serializer.float32(obj.duty, buffer, bufferOffset);
    // Serialize message field [num_periods]
    bufferOffset = _serializer.uint32(obj.num_periods, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLightState
    let len;
    let data = new SetLightState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duty]
    data.duty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_periods]
    data.num_periods = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/SetLightState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '194cab8d6bb9205433dc15755489711e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float32 frequency
    float32 duty
    uint32 num_periods
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLightState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.duty !== undefined) {
      resolved.duty = msg.duty;
    }
    else {
      resolved.duty = 0.0
    }

    if (msg.num_periods !== undefined) {
      resolved.num_periods = msg.num_periods;
    }
    else {
      resolved.num_periods = 0
    }

    return resolved;
    }
};

module.exports = SetLightState;
