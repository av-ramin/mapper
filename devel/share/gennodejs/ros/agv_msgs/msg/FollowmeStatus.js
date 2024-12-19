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

class FollowmeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_sp = null;
      this.angle_sp = null;
      this.live_distance = null;
      this.live_angle = null;
      this.velocity_limit = null;
      this.chosen_tag_name = null;
      this.dist_on_the_path = null;
      this.mode_indirect = null;
      this.start_active = null;
      this.pause_active = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_sp')) {
        this.distance_sp = initObj.distance_sp
      }
      else {
        this.distance_sp = 0.0;
      }
      if (initObj.hasOwnProperty('angle_sp')) {
        this.angle_sp = initObj.angle_sp
      }
      else {
        this.angle_sp = 0.0;
      }
      if (initObj.hasOwnProperty('live_distance')) {
        this.live_distance = initObj.live_distance
      }
      else {
        this.live_distance = 0.0;
      }
      if (initObj.hasOwnProperty('live_angle')) {
        this.live_angle = initObj.live_angle
      }
      else {
        this.live_angle = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_limit')) {
        this.velocity_limit = initObj.velocity_limit
      }
      else {
        this.velocity_limit = 0.0;
      }
      if (initObj.hasOwnProperty('chosen_tag_name')) {
        this.chosen_tag_name = initObj.chosen_tag_name
      }
      else {
        this.chosen_tag_name = '';
      }
      if (initObj.hasOwnProperty('dist_on_the_path')) {
        this.dist_on_the_path = initObj.dist_on_the_path
      }
      else {
        this.dist_on_the_path = 0.0;
      }
      if (initObj.hasOwnProperty('mode_indirect')) {
        this.mode_indirect = initObj.mode_indirect
      }
      else {
        this.mode_indirect = 0;
      }
      if (initObj.hasOwnProperty('start_active')) {
        this.start_active = initObj.start_active
      }
      else {
        this.start_active = false;
      }
      if (initObj.hasOwnProperty('pause_active')) {
        this.pause_active = initObj.pause_active
      }
      else {
        this.pause_active = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowmeStatus
    // Serialize message field [distance_sp]
    bufferOffset = _serializer.float32(obj.distance_sp, buffer, bufferOffset);
    // Serialize message field [angle_sp]
    bufferOffset = _serializer.float32(obj.angle_sp, buffer, bufferOffset);
    // Serialize message field [live_distance]
    bufferOffset = _serializer.float32(obj.live_distance, buffer, bufferOffset);
    // Serialize message field [live_angle]
    bufferOffset = _serializer.float32(obj.live_angle, buffer, bufferOffset);
    // Serialize message field [velocity_limit]
    bufferOffset = _serializer.float32(obj.velocity_limit, buffer, bufferOffset);
    // Serialize message field [chosen_tag_name]
    bufferOffset = _serializer.string(obj.chosen_tag_name, buffer, bufferOffset);
    // Serialize message field [dist_on_the_path]
    bufferOffset = _serializer.float32(obj.dist_on_the_path, buffer, bufferOffset);
    // Serialize message field [mode_indirect]
    bufferOffset = _serializer.uint8(obj.mode_indirect, buffer, bufferOffset);
    // Serialize message field [start_active]
    bufferOffset = _serializer.bool(obj.start_active, buffer, bufferOffset);
    // Serialize message field [pause_active]
    bufferOffset = _serializer.bool(obj.pause_active, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowmeStatus
    let len;
    let data = new FollowmeStatus(null);
    // Deserialize message field [distance_sp]
    data.distance_sp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_sp]
    data.angle_sp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [live_distance]
    data.live_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [live_angle]
    data.live_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_limit]
    data.velocity_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chosen_tag_name]
    data.chosen_tag_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist_on_the_path]
    data.dist_on_the_path = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode_indirect]
    data.mode_indirect = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_active]
    data.start_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pause_active]
    data.pause_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.chosen_tag_name);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/FollowmeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '352cd66af525f12fc4178354b47bfc2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 distance_sp
    float32 angle_sp
    float32 live_distance
    float32 live_angle
    float32 velocity_limit
    string chosen_tag_name
    float32 dist_on_the_path
    uint8 mode_indirect
    bool start_active
    bool pause_active
    uint8 mode
    uint8 DIRECT=1
    uint8 INDIRECT=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowmeStatus(null);
    if (msg.distance_sp !== undefined) {
      resolved.distance_sp = msg.distance_sp;
    }
    else {
      resolved.distance_sp = 0.0
    }

    if (msg.angle_sp !== undefined) {
      resolved.angle_sp = msg.angle_sp;
    }
    else {
      resolved.angle_sp = 0.0
    }

    if (msg.live_distance !== undefined) {
      resolved.live_distance = msg.live_distance;
    }
    else {
      resolved.live_distance = 0.0
    }

    if (msg.live_angle !== undefined) {
      resolved.live_angle = msg.live_angle;
    }
    else {
      resolved.live_angle = 0.0
    }

    if (msg.velocity_limit !== undefined) {
      resolved.velocity_limit = msg.velocity_limit;
    }
    else {
      resolved.velocity_limit = 0.0
    }

    if (msg.chosen_tag_name !== undefined) {
      resolved.chosen_tag_name = msg.chosen_tag_name;
    }
    else {
      resolved.chosen_tag_name = ''
    }

    if (msg.dist_on_the_path !== undefined) {
      resolved.dist_on_the_path = msg.dist_on_the_path;
    }
    else {
      resolved.dist_on_the_path = 0.0
    }

    if (msg.mode_indirect !== undefined) {
      resolved.mode_indirect = msg.mode_indirect;
    }
    else {
      resolved.mode_indirect = 0
    }

    if (msg.start_active !== undefined) {
      resolved.start_active = msg.start_active;
    }
    else {
      resolved.start_active = false
    }

    if (msg.pause_active !== undefined) {
      resolved.pause_active = msg.pause_active;
    }
    else {
      resolved.pause_active = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

// Constants for message
FollowmeStatus.Constants = {
  DIRECT: 1,
  INDIRECT: 2,
}

module.exports = FollowmeStatus;
