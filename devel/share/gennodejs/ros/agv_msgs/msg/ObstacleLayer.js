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

class ObstacleLayer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.id = null;
      this.color = null;
      this.order = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new ID();
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleLayer
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Check that the constant length array field [color] has the right length
    if (obj.color.length !== 4) {
      throw new Error('Unable to serialize array field color - length must be 4')
    }
    // Serialize message field [color]
    bufferOffset = _arraySerializer.uint8(obj.color, buffer, bufferOffset, 4);
    // Serialize message field [order]
    bufferOffset = _serializer.uint8(obj.order, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleLayer
    let len;
    let data = new ObstacleLayer(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    // Deserialize message field [order]
    data.order = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ObstacleLayer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bd0537b4fe7e49768bd2ae71fd5bb22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    agv_msgs/ID id
    uint8[4] color
    uint8 order
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
    const resolved = new ObstacleLayer(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = new Array(4).fill(0)
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    return resolved;
    }
};

module.exports = ObstacleLayer;
