// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionInfo = require('./MissionInfo.js');
let MissionProfile = require('./MissionProfile.js');

//-----------------------------------------------------------

class Mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.profile = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new MissionInfo();
      }
      if (initObj.hasOwnProperty('profile')) {
        this.profile = initObj.profile
      }
      else {
        this.profile = new MissionProfile();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mission
    // Serialize message field [info]
    bufferOffset = MissionInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [profile]
    bufferOffset = MissionProfile.serialize(obj.profile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mission
    let len;
    let data = new Mission(null);
    // Deserialize message field [info]
    data.info = MissionInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [profile]
    data.profile = MissionProfile.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MissionInfo.getMessageSize(object.info);
    length += MissionProfile.getMessageSize(object.profile);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdb503fbfee60173009aba68eb8b2b65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/MissionInfo info
    agv_msgs/MissionProfile profile
    ================================================================================
    MSG: agv_msgs/MissionInfo
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
    
    ================================================================================
    MSG: agv_msgs/MissionProfile
    agv_msgs/ID path_id
    agv_msgs/NavigationConfig config
    agv_msgs/ID[] behaviors
    agv_msgs/ID[] zones
    ================================================================================
    MSG: agv_msgs/NavigationConfig
    uint8 direction
    uint8 DIR_FORWARD=0
    uint8 DIR_CLOCKWISE=0
    uint8 DIR_REVERSE=1
    uint8 DIR_COUNTERCLOCKWISE=1
    
    uint8 repeat_mode
    uint8 REPEAT_NONE=0
    uint8 REPEAT_CIRCULAR=1
    uint8 REPEAT_DOUBLE_BACK=2
    
    uint16 no_of_loops
    uint8 INFINITE_LOOPS = 0
    uint8 SINGLE_EXECUTION = 1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mission(null);
    if (msg.info !== undefined) {
      resolved.info = MissionInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new MissionInfo()
    }

    if (msg.profile !== undefined) {
      resolved.profile = MissionProfile.Resolve(msg.profile)
    }
    else {
      resolved.profile = new MissionProfile()
    }

    return resolved;
    }
};

module.exports = Mission;
