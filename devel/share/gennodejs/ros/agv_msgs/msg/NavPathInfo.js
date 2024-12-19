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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavPathInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.creation_time = null;
      this.type = null;
      this.uncertainty = null;
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
      if (initObj.hasOwnProperty('creation_time')) {
        this.creation_time = initObj.creation_time
      }
      else {
        this.creation_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('uncertainty')) {
        this.uncertainty = initObj.uncertainty
      }
      else {
        this.uncertainty = 0;
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
        this.color = new std_msgs.msg.ColorRGBA();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPathInfo
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [creation_time]
    bufferOffset = _serializer.time(obj.creation_time, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [uncertainty]
    bufferOffset = _serializer.uint8(obj.uncertainty, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPathInfo
    let len;
    let data = new NavPathInfo(null);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [creation_time]
    data.creation_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uncertainty]
    data.uncertainty = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavPathInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15f56a45b039a39725c3469a1fbf2667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID id
    time creation_time
    
    uint8 type
    uint8 UNKNOWN=0
    uint8 MANUAL=1
    uint8 RECORDED=2
    uint8 IMPORTED=3
    
    uint8 uncertainty
    uint8 OK=0
    uint8 UNCERTAIN=1
    
    string name
    std_msgs/ColorRGBA color
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPathInfo(null);
    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.creation_time !== undefined) {
      resolved.creation_time = msg.creation_time;
    }
    else {
      resolved.creation_time = {secs: 0, nsecs: 0}
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.uncertainty !== undefined) {
      resolved.uncertainty = msg.uncertainty;
    }
    else {
      resolved.uncertainty = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    return resolved;
    }
};

// Constants for message
NavPathInfo.Constants = {
  UNKNOWN: 0,
  MANUAL: 1,
  RECORDED: 2,
  IMPORTED: 3,
  OK: 0,
  UNCERTAIN: 1,
}

module.exports = NavPathInfo;
