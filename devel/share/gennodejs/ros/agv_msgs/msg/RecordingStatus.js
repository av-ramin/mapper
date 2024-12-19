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

class RecordingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.recorder_active = null;
      this.bag_name = null;
      this.bag_size_gb = null;
      this.free_space_gb = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('recorder_active')) {
        this.recorder_active = initObj.recorder_active
      }
      else {
        this.recorder_active = false;
      }
      if (initObj.hasOwnProperty('bag_name')) {
        this.bag_name = initObj.bag_name
      }
      else {
        this.bag_name = '';
      }
      if (initObj.hasOwnProperty('bag_size_gb')) {
        this.bag_size_gb = initObj.bag_size_gb
      }
      else {
        this.bag_size_gb = 0.0;
      }
      if (initObj.hasOwnProperty('free_space_gb')) {
        this.free_space_gb = initObj.free_space_gb
      }
      else {
        this.free_space_gb = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordingStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [recorder_active]
    bufferOffset = _serializer.bool(obj.recorder_active, buffer, bufferOffset);
    // Serialize message field [bag_name]
    bufferOffset = _serializer.string(obj.bag_name, buffer, bufferOffset);
    // Serialize message field [bag_size_gb]
    bufferOffset = _serializer.float32(obj.bag_size_gb, buffer, bufferOffset);
    // Serialize message field [free_space_gb]
    bufferOffset = _serializer.float32(obj.free_space_gb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordingStatus
    let len;
    let data = new RecordingStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [recorder_active]
    data.recorder_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bag_name]
    data.bag_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bag_size_gb]
    data.bag_size_gb = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [free_space_gb]
    data.free_space_gb = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.bag_name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/RecordingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a17c53f7b4ef4b7bd3c1b923d7ae852';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool recorder_active
    string bag_name
    float32 bag_size_gb
    float32 free_space_gb
    
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
    const resolved = new RecordingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.recorder_active !== undefined) {
      resolved.recorder_active = msg.recorder_active;
    }
    else {
      resolved.recorder_active = false
    }

    if (msg.bag_name !== undefined) {
      resolved.bag_name = msg.bag_name;
    }
    else {
      resolved.bag_name = ''
    }

    if (msg.bag_size_gb !== undefined) {
      resolved.bag_size_gb = msg.bag_size_gb;
    }
    else {
      resolved.bag_size_gb = 0.0
    }

    if (msg.free_space_gb !== undefined) {
      resolved.free_space_gb = msg.free_space_gb;
    }
    else {
      resolved.free_space_gb = 0.0
    }

    return resolved;
    }
};

module.exports = RecordingStatus;
