// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Waypoint = require('./Waypoint.js');
let NavPathInfo = require('./NavPathInfo.js');

//-----------------------------------------------------------

class NavPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoints = null;
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new NavPathInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavPath
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [info]
    bufferOffset = NavPathInfo.serialize(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavPath
    let len;
    let data = new NavPath(null);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [info]
    data.info = NavPathInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.waypoints.forEach((val) => {
      length += Waypoint.getMessageSize(val);
    });
    length += NavPathInfo.getMessageSize(object.info);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NavPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ab59b8885703109fbcdb3fa77299580';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/Waypoint[] waypoints
    agv_msgs/NavPathInfo info
    ================================================================================
    MSG: agv_msgs/Waypoint
    Header header
    agv_msgs/NavPose pose
    agv_msgs/WaypointStatus status
    
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
    
    ================================================================================
    MSG: agv_msgs/NavPose
    float64 x
    float64 y
    float64 z
    float64 theta
    
    uint8 type
    uint8 UNKNOWN=0
    
    ================================================================================
    MSG: agv_msgs/WaypointStatus
    agv_msgs/ID goal_id
    uint8 state # contins actionlib::SimpleClientGoalState state
    float32 radius
    bool road
    bool intersection
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: agv_msgs/NavPathInfo
    agv_msgs/ID id
    time creation_time
    
    uint8 type
    uint8 UNKNOWN=0
    uint8 MANUAL=1
    uint8 RECORDED=2
    uint8 IMPORTED=3
    
    uint8 uncertainty
    uint8 OK=0
    uint8 UNCERTAIN=1
    
    string name
    std_msgs/ColorRGBA color
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavPath(null);
    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = Waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    if (msg.info !== undefined) {
      resolved.info = NavPathInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new NavPathInfo()
    }

    return resolved;
    }
};

module.exports = NavPath;
