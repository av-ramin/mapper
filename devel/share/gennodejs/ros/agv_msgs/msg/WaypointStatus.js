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

class WaypointStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_id = null;
      this.state = null;
      this.radius = null;
      this.road = null;
      this.intersection = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new ID();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('road')) {
        this.road = initObj.road
      }
      else {
        this.road = false;
      }
      if (initObj.hasOwnProperty('intersection')) {
        this.intersection = initObj.intersection
      }
      else {
        this.intersection = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointStatus
    // Serialize message field [goal_id]
    bufferOffset = ID.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [road]
    bufferOffset = _serializer.bool(obj.road, buffer, bufferOffset);
    // Serialize message field [intersection]
    bufferOffset = _serializer.bool(obj.intersection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointStatus
    let len;
    let data = new WaypointStatus(null);
    // Deserialize message field [goal_id]
    data.goal_id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [road]
    data.road = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [intersection]
    data.intersection = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/WaypointStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62191f205a4471b269c61732e2f09cee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ID goal_id
    uint8 state # contins actionlib::SimpleClientGoalState state
    float32 radius
    bool road
    bool intersection
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
    const resolved = new WaypointStatus(null);
    if (msg.goal_id !== undefined) {
      resolved.goal_id = ID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new ID()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.road !== undefined) {
      resolved.road = msg.road;
    }
    else {
      resolved.road = false
    }

    if (msg.intersection !== undefined) {
      resolved.intersection = msg.intersection;
    }
    else {
      resolved.intersection = false
    }

    return resolved;
    }
};

module.exports = WaypointStatus;
