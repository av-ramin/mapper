// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ZoneInfo = require('./ZoneInfo.js');
let ZoneShape = require('./ZoneShape.js');

//-----------------------------------------------------------

class Zone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new ZoneInfo();
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new ZoneShape();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Zone
    // Serialize message field [info]
    bufferOffset = ZoneInfo.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = ZoneShape.serialize(obj.shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Zone
    let len;
    let data = new Zone(null);
    // Deserialize message field [info]
    data.info = ZoneInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = ZoneShape.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ZoneInfo.getMessageSize(object.info);
    length += ZoneShape.getMessageSize(object.shape);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Zone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5040c20424776948eebc0958029800d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/ZoneInfo info
    agv_msgs/ZoneShape shape 
    ================================================================================
    MSG: agv_msgs/ZoneInfo
    agv_msgs/ID id
    string group
    string name
    std_msgs/ColorRGBA color
    agv_msgs/KeyValue[] properties
    bool visible
    time creation_time
    ================================================================================
    MSG: agv_msgs/ID
     uint32 data
    
     uint32 INVALID_ID=0
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: agv_msgs/KeyValue
    string key
    string value
    ================================================================================
    MSG: agv_msgs/ZoneShape
    string frame_id
    geometry_msgs/Point32[] points
    float32 radius
    
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
    const resolved = new Zone(null);
    if (msg.info !== undefined) {
      resolved.info = ZoneInfo.Resolve(msg.info)
    }
    else {
      resolved.info = new ZoneInfo()
    }

    if (msg.shape !== undefined) {
      resolved.shape = ZoneShape.Resolve(msg.shape)
    }
    else {
      resolved.shape = new ZoneShape()
    }

    return resolved;
    }
};

module.exports = Zone;
