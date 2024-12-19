// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavPose = require('./NavPose.js');
let WaypointStatus = require('./WaypointStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new NavPose();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new WaypointStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = NavPose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = WaypointStatus.serialize(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = NavPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = WaypointStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e11fc09e9fd5b5c4d82756a0e92bc03b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = NavPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new NavPose()
    }

    if (msg.status !== undefined) {
      resolved.status = WaypointStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new WaypointStatus()
    }

    return resolved;
    }
};

module.exports = Waypoint;
