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

class Detection2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_id = null;
      this.class_name = null;
      this.probability = null;
      this.track_id = null;
      this.xmin = null;
      this.ymin = null;
      this.xmax = null;
      this.ymax = null;
      this.yaw_hor = null;
      this.yaw_hor_dev = null;
      this.yaw_ver = null;
      this.yaw_ver_dev = null;
      this.dist = null;
      this.dist_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('class_id')) {
        this.class_id = initObj.class_id
      }
      else {
        this.class_id = 0;
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0;
      }
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0;
      }
      if (initObj.hasOwnProperty('yaw_hor')) {
        this.yaw_hor = initObj.yaw_hor
      }
      else {
        this.yaw_hor = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_hor_dev')) {
        this.yaw_hor_dev = initObj.yaw_hor_dev
      }
      else {
        this.yaw_hor_dev = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_ver')) {
        this.yaw_ver = initObj.yaw_ver
      }
      else {
        this.yaw_ver = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_ver_dev')) {
        this.yaw_ver_dev = initObj.yaw_ver_dev
      }
      else {
        this.yaw_ver_dev = 0.0;
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
      if (initObj.hasOwnProperty('dist_dev')) {
        this.dist_dev = initObj.dist_dev
      }
      else {
        this.dist_dev = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection2D
    // Serialize message field [class_id]
    bufferOffset = _serializer.int32(obj.class_id, buffer, bufferOffset);
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float32(obj.probability, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    // Serialize message field [xmin]
    bufferOffset = _serializer.uint32(obj.xmin, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.uint32(obj.ymin, buffer, bufferOffset);
    // Serialize message field [xmax]
    bufferOffset = _serializer.uint32(obj.xmax, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.uint32(obj.ymax, buffer, bufferOffset);
    // Serialize message field [yaw_hor]
    bufferOffset = _serializer.float32(obj.yaw_hor, buffer, bufferOffset);
    // Serialize message field [yaw_hor_dev]
    bufferOffset = _serializer.float32(obj.yaw_hor_dev, buffer, bufferOffset);
    // Serialize message field [yaw_ver]
    bufferOffset = _serializer.float32(obj.yaw_ver, buffer, bufferOffset);
    // Serialize message field [yaw_ver_dev]
    bufferOffset = _serializer.float32(obj.yaw_ver_dev, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    // Serialize message field [dist_dev]
    bufferOffset = _serializer.float32(obj.dist_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection2D
    let len;
    let data = new Detection2D(null);
    // Deserialize message field [class_id]
    data.class_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [yaw_hor]
    data.yaw_hor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_hor_dev]
    data.yaw_hor_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_ver]
    data.yaw_ver = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_ver_dev]
    data.yaw_ver_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dist_dev]
    data.dist_dev = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.class_name);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Detection2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '828b4a851eb90a71558f422ff404dc24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 class_id
    string class_name
    float32 probability
    int32 track_id
    uint32 xmin
    uint32 ymin
    uint32 xmax
    uint32 ymax
    float32 yaw_hor
    float32 yaw_hor_dev
    float32 yaw_ver
    float32 yaw_ver_dev
    float32 dist
    float32 dist_dev
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Detection2D(null);
    if (msg.class_id !== undefined) {
      resolved.class_id = msg.class_id;
    }
    else {
      resolved.class_id = 0
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0
    }

    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0
    }

    if (msg.yaw_hor !== undefined) {
      resolved.yaw_hor = msg.yaw_hor;
    }
    else {
      resolved.yaw_hor = 0.0
    }

    if (msg.yaw_hor_dev !== undefined) {
      resolved.yaw_hor_dev = msg.yaw_hor_dev;
    }
    else {
      resolved.yaw_hor_dev = 0.0
    }

    if (msg.yaw_ver !== undefined) {
      resolved.yaw_ver = msg.yaw_ver;
    }
    else {
      resolved.yaw_ver = 0.0
    }

    if (msg.yaw_ver_dev !== undefined) {
      resolved.yaw_ver_dev = msg.yaw_ver_dev;
    }
    else {
      resolved.yaw_ver_dev = 0.0
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    if (msg.dist_dev !== undefined) {
      resolved.dist_dev = msg.dist_dev;
    }
    else {
      resolved.dist_dev = 0.0
    }

    return resolved;
    }
};

module.exports = Detection2D;
