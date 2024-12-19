// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleInfo = require('./ObstacleInfo.js');
let ObstacleShape = require('./ObstacleShape.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.info = null;
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new ObstacleInfo();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new ObstacleShape();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = ObstacleInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = ObstacleShape.serialize(obj.shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = ObstacleInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = ObstacleShape.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ObstacleInfo.getMessageSize(object.info);
    length += ObstacleShape.getMessageSize(object.shape);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9a9ae43bd863b8343b3c3c58447e9df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    agv_msgs/ObstacleInfo info
    agv_msgs/ObstacleShape shape 
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
    MSG: agv_msgs/ObstacleInfo
    string description
    uint16 symbol
    agv_msgs/ID layer_id
    bool enabled
    uint16 priority
    
    uint8 operation
    uint8 REPLACE = 0
    uint8 ADD = 1
    uint8 SUBTRACT = 2
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: agv_msgs/ObstacleShape
    agv_msgs/ID id
    geometry_msgs/Point32[] points 
    float32 cost
    float32 radius
    string frame_id
    
    uint8 type
    uint8 INVALID = 0
    uint8 POLYGON = 1
    uint8 RADIUS = 2 
    uint8 BARRIER = 3  
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.info !== undefined) {
      resolved.info = ObstacleInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new ObstacleInfo()
    }

    if (msg.shape !== undefined) {
      resolved.shape = ObstacleShape.Resolve(msg.shape)
    }
    else {
      resolved.shape = new ObstacleShape()
    }

    return resolved;
    }
};

module.exports = Obstacle;
