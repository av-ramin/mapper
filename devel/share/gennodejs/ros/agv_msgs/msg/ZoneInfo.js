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
let KeyValue = require('./KeyValue.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ZoneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.group = null;
      this.name = null;
      this.color = null;
      this.properties = null;
      this.visible = null;
      this.creation_time = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new ID();
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
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
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
      if (initObj.hasOwnProperty('visible')) {
        this.visible = initObj.visible
      }
      else {
        this.visible = false;
      }
      if (initObj.hasOwnProperty('creation_time')) {
        this.creation_time = initObj.creation_time
      }
      else {
        this.creation_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ZoneInfo
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [visible]
    bufferOffset = _serializer.bool(obj.visible, buffer, bufferOffset);
    // Serialize message field [creation_time]
    bufferOffset = _serializer.time(obj.creation_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ZoneInfo
    let len;
    let data = new ZoneInfo(null);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [properties]
    // Deserialize array length for message field [properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties[i] = KeyValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [visible]
    data.visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [creation_time]
    data.creation_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.group);
    length += _getByteLength(object.name);
    object.properties.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ZoneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23fe4a88c361ecd57494678a1faa3171';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID id
    string group
    string name
    std_msgs/ColorRGBA color
    agv_msgs/KeyValue[] properties
    bool visible
    time creation_time
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
    const resolved = new ZoneInfo(null);
    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
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

    if (msg.properties !== undefined) {
      resolved.properties = new Array(msg.properties.length);
      for (let i = 0; i < resolved.properties.length; ++i) {
        resolved.properties[i] = KeyValue.Resolve(msg.properties[i]);
      }
    }
    else {
      resolved.properties = []
    }

    if (msg.visible !== undefined) {
      resolved.visible = msg.visible;
    }
    else {
      resolved.visible = false
    }

    if (msg.creation_time !== undefined) {
      resolved.creation_time = msg.creation_time;
    }
    else {
      resolved.creation_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ZoneInfo;
