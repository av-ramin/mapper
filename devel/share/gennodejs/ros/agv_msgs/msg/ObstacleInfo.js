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

//-----------------------------------------------------------

class ObstacleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.description = null;
      this.symbol = null;
      this.layer_id = null;
      this.enabled = null;
      this.priority = null;
      this.operation = null;
    }
    else {
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('symbol')) {
        this.symbol = initObj.symbol
      }
      else {
        this.symbol = 0;
      }
      if (initObj.hasOwnProperty('layer_id')) {
        this.layer_id = initObj.layer_id
      }
      else {
        this.layer_id = new ID();
      }
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = false;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('operation')) {
        this.operation = initObj.operation
      }
      else {
        this.operation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleInfo
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [symbol]
    bufferOffset = _serializer.uint16(obj.symbol, buffer, bufferOffset);
    // Serialize message field [layer_id]
    bufferOffset = ID.serialize(obj.layer_id, buffer, bufferOffset);
    // Serialize message field [enabled]
    bufferOffset = _serializer.bool(obj.enabled, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint16(obj.priority, buffer, bufferOffset);
    // Serialize message field [operation]
    bufferOffset = _serializer.uint8(obj.operation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInfo
    let len;
    let data = new ObstacleInfo(null);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [symbol]
    data.symbol = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [layer_id]
    data.layer_id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [operation]
    data.operation = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.description);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ObstacleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77a1e000112bcc70c977607dda6c239e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string description
    uint16 symbol
    agv_msgs/ID layer_id
    bool enabled
    uint16 priority
    
    uint8 operation
    uint8 REPLACE = 0
    uint8 ADD = 1
    uint8 SUBTRACT = 2
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleInfo(null);
    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.symbol !== undefined) {
      resolved.symbol = msg.symbol;
    }
    else {
      resolved.symbol = 0
    }

    if (msg.layer_id !== undefined) {
      resolved.layer_id = ID.Resolve(msg.layer_id)
    }
    else {
      resolved.layer_id = new ID()
    }

    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = false
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.operation !== undefined) {
      resolved.operation = msg.operation;
    }
    else {
      resolved.operation = 0
    }

    return resolved;
    }
};

// Constants for message
ObstacleInfo.Constants = {
  REPLACE: 0,
  ADD: 1,
  SUBTRACT: 2,
}

module.exports = ObstacleInfo;
