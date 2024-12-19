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

class MissionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.description = null;
      this.group = null;
      this.creation_time = null;
      this.modification_time = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new ID();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('group')) {
        this.group = initObj.group
      }
      else {
        this.group = '';
      }
      if (initObj.hasOwnProperty('creation_time')) {
        this.creation_time = initObj.creation_time
      }
      else {
        this.creation_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('modification_time')) {
        this.modification_time = initObj.modification_time
      }
      else {
        this.modification_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionInfo
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [group]
    bufferOffset = _serializer.string(obj.group, buffer, bufferOffset);
    // Serialize message field [creation_time]
    bufferOffset = _serializer.time(obj.creation_time, buffer, bufferOffset);
    // Serialize message field [modification_time]
    bufferOffset = _serializer.time(obj.modification_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionInfo
    let len;
    let data = new MissionInfo(null);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group]
    data.group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [creation_time]
    data.creation_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [modification_time]
    data.modification_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.description);
    length += _getByteLength(object.group);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/MissionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '696912476d004d91dc3f26a1f2e44a40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      agv_msgs/ID id
      string name
      string description
      string group
      time creation_time
      time modification_time
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
    const resolved = new MissionInfo(null);
    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.group !== undefined) {
      resolved.group = msg.group;
    }
    else {
      resolved.group = ''
    }

    if (msg.creation_time !== undefined) {
      resolved.creation_time = msg.creation_time;
    }
    else {
      resolved.creation_time = {secs: 0, nsecs: 0}
    }

    if (msg.modification_time !== undefined) {
      resolved.modification_time = msg.modification_time;
    }
    else {
      resolved.modification_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = MissionInfo;
