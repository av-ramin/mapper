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

class MissionInstrumentation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.elapsed_time = null;
      this.traversed_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('elapsed_time')) {
        this.elapsed_time = initObj.elapsed_time
      }
      else {
        this.elapsed_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('traversed_distance')) {
        this.traversed_distance = initObj.traversed_distance
      }
      else {
        this.traversed_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionInstrumentation
    // Serialize message field [elapsed_time]
    bufferOffset = _serializer.duration(obj.elapsed_time, buffer, bufferOffset);
    // Serialize message field [traversed_distance]
    bufferOffset = _serializer.float64(obj.traversed_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionInstrumentation
    let len;
    let data = new MissionInstrumentation(null);
    // Deserialize message field [elapsed_time]
    data.elapsed_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [traversed_distance]
    data.traversed_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/MissionInstrumentation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0f51d602a0058a2f553df8c1db261b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration elapsed_time
    float64 traversed_distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionInstrumentation(null);
    if (msg.elapsed_time !== undefined) {
      resolved.elapsed_time = msg.elapsed_time;
    }
    else {
      resolved.elapsed_time = {secs: 0, nsecs: 0}
    }

    if (msg.traversed_distance !== undefined) {
      resolved.traversed_distance = msg.traversed_distance;
    }
    else {
      resolved.traversed_distance = 0.0
    }

    return resolved;
    }
};

module.exports = MissionInstrumentation;
