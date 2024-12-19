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
let PathSegmentInfo = require('./PathSegmentInfo.js');

//-----------------------------------------------------------

class PathSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new PathSegmentInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathSegment
    // Serialize message field [ids]
    // Serialize the length for message field [ids]
    bufferOffset = _serializer.uint32(obj.ids.length, buffer, bufferOffset);
    obj.ids.forEach((val) => {
      bufferOffset = ID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [info]
    bufferOffset = PathSegmentInfo.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathSegment
    let len;
    let data = new PathSegment(null);
    // Deserialize message field [ids]
    // Deserialize array length for message field [ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ids[i] = ID.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [info]
    data.info = PathSegmentInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ids.length;
    length += PathSegmentInfo.getMessageSize(object.info);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/PathSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '514c4a42318df3f68cc4c347460e4627';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID[] ids
    agv_msgs/PathSegmentInfo info
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: agv_msgs/PathSegmentInfo
    agv_msgs/ID id
    
    uint8 type
    uint8 UNKNOWN=0
    
    string name
    uint8[4] color
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathSegment(null);
    if (msg.ids !== undefined) {
      resolved.ids = new Array(msg.ids.length);
      for (let i = 0; i < resolved.ids.length; ++i) {
        resolved.ids[i] = ID.Resolve(msg.ids[i]);
      }
    }
    else {
      resolved.ids = []
    }

    if (msg.info !== undefined) {
      resolved.info = PathSegmentInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new PathSegmentInfo()
    }

    return resolved;
    }
};

module.exports = PathSegment;
