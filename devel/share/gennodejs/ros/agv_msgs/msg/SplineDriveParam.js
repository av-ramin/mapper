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

class SplineDriveParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_offset = null;
      this.desired_v = null;
      this.max_a = null;
      this.incline_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('position_offset')) {
        this.position_offset = initObj.position_offset
      }
      else {
        this.position_offset = 0.0;
      }
      if (initObj.hasOwnProperty('desired_v')) {
        this.desired_v = initObj.desired_v
      }
      else {
        this.desired_v = 0.0;
      }
      if (initObj.hasOwnProperty('max_a')) {
        this.max_a = initObj.max_a
      }
      else {
        this.max_a = 0.0;
      }
      if (initObj.hasOwnProperty('incline_angle')) {
        this.incline_angle = initObj.incline_angle
      }
      else {
        this.incline_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SplineDriveParam
    // Serialize message field [position_offset]
    bufferOffset = _serializer.float64(obj.position_offset, buffer, bufferOffset);
    // Serialize message field [desired_v]
    bufferOffset = _serializer.float64(obj.desired_v, buffer, bufferOffset);
    // Serialize message field [max_a]
    bufferOffset = _serializer.float64(obj.max_a, buffer, bufferOffset);
    // Serialize message field [incline_angle]
    bufferOffset = _serializer.float64(obj.incline_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SplineDriveParam
    let len;
    let data = new SplineDriveParam(null);
    // Deserialize message field [position_offset]
    data.position_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_v]
    data.desired_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_a]
    data.max_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [incline_angle]
    data.incline_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/SplineDriveParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3a6d815da24b8149fc628a98810f734';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 position_offset
    float64 desired_v
    float64 max_a
    float64 incline_angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SplineDriveParam(null);
    if (msg.position_offset !== undefined) {
      resolved.position_offset = msg.position_offset;
    }
    else {
      resolved.position_offset = 0.0
    }

    if (msg.desired_v !== undefined) {
      resolved.desired_v = msg.desired_v;
    }
    else {
      resolved.desired_v = 0.0
    }

    if (msg.max_a !== undefined) {
      resolved.max_a = msg.max_a;
    }
    else {
      resolved.max_a = 0.0
    }

    if (msg.incline_angle !== undefined) {
      resolved.incline_angle = msg.incline_angle;
    }
    else {
      resolved.incline_angle = 0.0
    }

    return resolved;
    }
};

module.exports = SplineDriveParam;
