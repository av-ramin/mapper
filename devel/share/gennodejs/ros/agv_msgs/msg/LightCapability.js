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

class LightCapability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.desc_name = null;
      this.min_duty_period = null;
      this.min_freq = null;
      this.max_freq = null;
      this.min_duty = null;
      this.max_duty = null;
      this.default_freq = null;
      this.default_duty = null;
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('desc_name')) {
        this.desc_name = initObj.desc_name
      }
      else {
        this.desc_name = '';
      }
      if (initObj.hasOwnProperty('min_duty_period')) {
        this.min_duty_period = initObj.min_duty_period
      }
      else {
        this.min_duty_period = 0.0;
      }
      if (initObj.hasOwnProperty('min_freq')) {
        this.min_freq = initObj.min_freq
      }
      else {
        this.min_freq = 0.0;
      }
      if (initObj.hasOwnProperty('max_freq')) {
        this.max_freq = initObj.max_freq
      }
      else {
        this.max_freq = 0.0;
      }
      if (initObj.hasOwnProperty('min_duty')) {
        this.min_duty = initObj.min_duty
      }
      else {
        this.min_duty = 0.0;
      }
      if (initObj.hasOwnProperty('max_duty')) {
        this.max_duty = initObj.max_duty
      }
      else {
        this.max_duty = 0.0;
      }
      if (initObj.hasOwnProperty('default_freq')) {
        this.default_freq = initObj.default_freq
      }
      else {
        this.default_freq = 0.0;
      }
      if (initObj.hasOwnProperty('default_duty')) {
        this.default_duty = initObj.default_duty
      }
      else {
        this.default_duty = 0.0;
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightCapability
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [desc_name]
    bufferOffset = _serializer.string(obj.desc_name, buffer, bufferOffset);
    // Serialize message field [min_duty_period]
    bufferOffset = _serializer.float64(obj.min_duty_period, buffer, bufferOffset);
    // Serialize message field [min_freq]
    bufferOffset = _serializer.float64(obj.min_freq, buffer, bufferOffset);
    // Serialize message field [max_freq]
    bufferOffset = _serializer.float64(obj.max_freq, buffer, bufferOffset);
    // Serialize message field [min_duty]
    bufferOffset = _serializer.float64(obj.min_duty, buffer, bufferOffset);
    // Serialize message field [max_duty]
    bufferOffset = _serializer.float64(obj.max_duty, buffer, bufferOffset);
    // Serialize message field [default_freq]
    bufferOffset = _serializer.float64(obj.default_freq, buffer, bufferOffset);
    // Serialize message field [default_duty]
    bufferOffset = _serializer.float64(obj.default_duty, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightCapability
    let len;
    let data = new LightCapability(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [desc_name]
    data.desc_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [min_duty_period]
    data.min_duty_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_freq]
    data.min_freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_freq]
    data.max_freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_duty]
    data.min_duty = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_duty]
    data.max_duty = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [default_freq]
    data.default_freq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [default_duty]
    data.default_duty = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.desc_name);
    length += _getByteLength(object.topic);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/LightCapability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '324c001d3c0f36b39a0b1a25c216ac00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string desc_name
    float64 min_duty_period
    float64 min_freq
    float64 max_freq
    float64 min_duty
    float64 max_duty
    float64 default_freq
    float64 default_duty
    string topic
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightCapability(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.desc_name !== undefined) {
      resolved.desc_name = msg.desc_name;
    }
    else {
      resolved.desc_name = ''
    }

    if (msg.min_duty_period !== undefined) {
      resolved.min_duty_period = msg.min_duty_period;
    }
    else {
      resolved.min_duty_period = 0.0
    }

    if (msg.min_freq !== undefined) {
      resolved.min_freq = msg.min_freq;
    }
    else {
      resolved.min_freq = 0.0
    }

    if (msg.max_freq !== undefined) {
      resolved.max_freq = msg.max_freq;
    }
    else {
      resolved.max_freq = 0.0
    }

    if (msg.min_duty !== undefined) {
      resolved.min_duty = msg.min_duty;
    }
    else {
      resolved.min_duty = 0.0
    }

    if (msg.max_duty !== undefined) {
      resolved.max_duty = msg.max_duty;
    }
    else {
      resolved.max_duty = 0.0
    }

    if (msg.default_freq !== undefined) {
      resolved.default_freq = msg.default_freq;
    }
    else {
      resolved.default_freq = 0.0
    }

    if (msg.default_duty !== undefined) {
      resolved.default_duty = msg.default_duty;
    }
    else {
      resolved.default_duty = 0.0
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

module.exports = LightCapability;
