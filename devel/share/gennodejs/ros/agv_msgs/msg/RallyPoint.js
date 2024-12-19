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
let ID = require('./ID.js');

//-----------------------------------------------------------

class RallyPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.id = null;
      this.name = null;
      this.priority = null;
      this.radius = null;
      this.creation_time = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new Waypoint();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new ID();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('creation_time')) {
        this.creation_time = initObj.creation_time
      }
      else {
        this.creation_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RallyPoint
    // Serialize message field [point]
    bufferOffset = Waypoint.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = ID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint16(obj.priority, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [creation_time]
    bufferOffset = _serializer.time(obj.creation_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RallyPoint
    let len;
    let data = new RallyPoint(null);
    // Deserialize message field [point]
    data.point = Waypoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = ID.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [creation_time]
    data.creation_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Waypoint.getMessageSize(object.point);
    length += _getByteLength(object.name);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/RallyPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35d2c36ca4d854de8711816e6db62eaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/Waypoint point
    agv_msgs/ID id
    string name
    uint16 priority
    float32 radius
    time creation_time
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RallyPoint(null);
    if (msg.point !== undefined) {
      resolved.point = Waypoint.Resolve(msg.point)
    }
    else {
      resolved.point = new Waypoint()
    }

    if (msg.id !== undefined) {
      resolved.id = ID.Resolve(msg.id)
    }
    else {
      resolved.id = new ID()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.creation_time !== undefined) {
      resolved.creation_time = msg.creation_time;
    }
    else {
      resolved.creation_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = RallyPoint;
