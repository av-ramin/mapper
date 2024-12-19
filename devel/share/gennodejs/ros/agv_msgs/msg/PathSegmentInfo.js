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

class PathSegmentInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.name = null;
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new ID();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSegmentInfo
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Check that the constant length array field [color] has the right length
    if (obj.color.length !== 4) {
      throw new Error('Unable to serialize array field color - length must be 4')
    }
    // Serialize message field [color]
    bufferOffset = _arraySerializer.uint8(obj.color, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSegmentInfo
    let len;
    let data = new PathSegmentInfo(null);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/PathSegmentInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c9bb7ab00e46283462814c46c76dfc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID id
    
    uint8 type
    uint8 UNKNOWN=0
    
    string name
    uint8[4] color
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
    const resolved = new PathSegmentInfo(null);
    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = new Array(4).fill(0)
    }

    return resolved;
    }
};

// Constants for message
PathSegmentInfo.Constants = {
  UNKNOWN: 0,
}

module.exports = PathSegmentInfo;
