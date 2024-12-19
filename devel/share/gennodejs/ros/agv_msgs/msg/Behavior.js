// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BehaviorInfo = require('./BehaviorInfo.js');
let KeyValue = require('./KeyValue.js');

//-----------------------------------------------------------

class Behavior {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new BehaviorInfo();
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Behavior
    // Serialize message field [info]
    bufferOffset = BehaviorInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Behavior
    let len;
    let data = new Behavior(null);
    // Deserialize message field [info]
    data.info = BehaviorInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [properties]
    // Deserialize array length for message field [properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties[i] = KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BehaviorInfo.getMessageSize(object.info);
    object.properties.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Behavior';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ead27a2d6e2bdcc7f79010ccab812ae7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/BehaviorInfo info
    agv_msgs/KeyValue[] properties
    ================================================================================
    MSG: agv_msgs/BehaviorInfo
    agv_msgs/ID id
    string name
    uint16 priority
    bool enabled
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: agv_msgs/KeyValue
    string key
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Behavior(null);
    if (msg.info !== undefined) {
      resolved.info = BehaviorInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new BehaviorInfo()
    }

    if (msg.properties !== undefined) {
      resolved.properties = new Array(msg.properties.length);
      for (let i = 0; i < resolved.properties.length; ++i) {
        resolved.properties[i] = KeyValue.Resolve(msg.properties[i]);
      }
    }
    else {
      resolved.properties = []
    }

    return resolved;
    }
};

module.exports = Behavior;
