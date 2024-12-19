// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RfTagInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tag_addr = null;
      this.anchor_addr = null;
      this.dist_to_anchor = null;
      this.tag_frame = null;
      this.btn0_state = null;
      this.btn1_state = null;
      this.btn2_state = null;
      this.battery_lvl = null;
      this.first_path_power = null;
      this.received_signal_strength = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tag_addr')) {
        this.tag_addr = initObj.tag_addr
      }
      else {
        this.tag_addr = '';
      }
      if (initObj.hasOwnProperty('anchor_addr')) {
        this.anchor_addr = initObj.anchor_addr
      }
      else {
        this.anchor_addr = '';
      }
      if (initObj.hasOwnProperty('dist_to_anchor')) {
        this.dist_to_anchor = initObj.dist_to_anchor
      }
      else {
        this.dist_to_anchor = 0.0;
      }
      if (initObj.hasOwnProperty('tag_frame')) {
        this.tag_frame = initObj.tag_frame
      }
      else {
        this.tag_frame = 0;
      }
      if (initObj.hasOwnProperty('btn0_state')) {
        this.btn0_state = initObj.btn0_state
      }
      else {
        this.btn0_state = false;
      }
      if (initObj.hasOwnProperty('btn1_state')) {
        this.btn1_state = initObj.btn1_state
      }
      else {
        this.btn1_state = false;
      }
      if (initObj.hasOwnProperty('btn2_state')) {
        this.btn2_state = initObj.btn2_state
      }
      else {
        this.btn2_state = false;
      }
      if (initObj.hasOwnProperty('battery_lvl')) {
        this.battery_lvl = initObj.battery_lvl
      }
      else {
        this.battery_lvl = 0;
      }
      if (initObj.hasOwnProperty('first_path_power')) {
        this.first_path_power = initObj.first_path_power
      }
      else {
        this.first_path_power = 0.0;
      }
      if (initObj.hasOwnProperty('received_signal_strength')) {
        this.received_signal_strength = initObj.received_signal_strength
      }
      else {
        this.received_signal_strength = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfTagInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tag_addr]
    bufferOffset = _serializer.string(obj.tag_addr, buffer, bufferOffset);
    // Serialize message field [anchor_addr]
    bufferOffset = _serializer.string(obj.anchor_addr, buffer, bufferOffset);
    // Serialize message field [dist_to_anchor]
    bufferOffset = _serializer.float32(obj.dist_to_anchor, buffer, bufferOffset);
    // Serialize message field [tag_frame]
    bufferOffset = _serializer.uint8(obj.tag_frame, buffer, bufferOffset);
    // Serialize message field [btn0_state]
    bufferOffset = _serializer.bool(obj.btn0_state, buffer, bufferOffset);
    // Serialize message field [btn1_state]
    bufferOffset = _serializer.bool(obj.btn1_state, buffer, bufferOffset);
    // Serialize message field [btn2_state]
    bufferOffset = _serializer.bool(obj.btn2_state, buffer, bufferOffset);
    // Serialize message field [battery_lvl]
    bufferOffset = _serializer.uint8(obj.battery_lvl, buffer, bufferOffset);
    // Serialize message field [first_path_power]
    bufferOffset = _serializer.float32(obj.first_path_power, buffer, bufferOffset);
    // Serialize message field [received_signal_strength]
    bufferOffset = _serializer.float32(obj.received_signal_strength, buffer, bufferOffset);
    // Serialize message field [covariance]
    bufferOffset = _serializer.float32(obj.covariance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfTagInfo
    let len;
    let data = new RfTagInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_addr]
    data.tag_addr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [anchor_addr]
    data.anchor_addr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dist_to_anchor]
    data.dist_to_anchor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_frame]
    data.tag_frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [btn0_state]
    data.btn0_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [btn1_state]
    data.btn1_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [btn2_state]
    data.btn2_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_lvl]
    data.battery_lvl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [first_path_power]
    data.first_path_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [received_signal_strength]
    data.received_signal_strength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.tag_addr);
    length += _getByteLength(object.anchor_addr);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/RfTagInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b788a49c92ea14828852cd337a50704a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string tag_addr
    string anchor_addr
    float32 dist_to_anchor
    uint8 tag_frame
    bool btn0_state
    bool btn1_state
    bool btn2_state
    uint8 battery_lvl
    float32 first_path_power
    float32 received_signal_strength
    float32 covariance
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfTagInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tag_addr !== undefined) {
      resolved.tag_addr = msg.tag_addr;
    }
    else {
      resolved.tag_addr = ''
    }

    if (msg.anchor_addr !== undefined) {
      resolved.anchor_addr = msg.anchor_addr;
    }
    else {
      resolved.anchor_addr = ''
    }

    if (msg.dist_to_anchor !== undefined) {
      resolved.dist_to_anchor = msg.dist_to_anchor;
    }
    else {
      resolved.dist_to_anchor = 0.0
    }

    if (msg.tag_frame !== undefined) {
      resolved.tag_frame = msg.tag_frame;
    }
    else {
      resolved.tag_frame = 0
    }

    if (msg.btn0_state !== undefined) {
      resolved.btn0_state = msg.btn0_state;
    }
    else {
      resolved.btn0_state = false
    }

    if (msg.btn1_state !== undefined) {
      resolved.btn1_state = msg.btn1_state;
    }
    else {
      resolved.btn1_state = false
    }

    if (msg.btn2_state !== undefined) {
      resolved.btn2_state = msg.btn2_state;
    }
    else {
      resolved.btn2_state = false
    }

    if (msg.battery_lvl !== undefined) {
      resolved.battery_lvl = msg.battery_lvl;
    }
    else {
      resolved.battery_lvl = 0
    }

    if (msg.first_path_power !== undefined) {
      resolved.first_path_power = msg.first_path_power;
    }
    else {
      resolved.first_path_power = 0.0
    }

    if (msg.received_signal_strength !== undefined) {
      resolved.received_signal_strength = msg.received_signal_strength;
    }
    else {
      resolved.received_signal_strength = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = 0.0
    }

    return resolved;
    }
};

module.exports = RfTagInfo;
