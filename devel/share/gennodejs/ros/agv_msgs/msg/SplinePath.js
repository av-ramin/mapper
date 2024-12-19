// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BezierSplinePointWProperties = require('./BezierSplinePointWProperties.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SplinePath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SplinePath
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = BezierSplinePointWProperties.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SplinePath
    let len;
    let data = new SplinePath(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = BezierSplinePointWProperties.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.path.forEach((val) => {
      length += BezierSplinePointWProperties.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/SplinePath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80bf4fef0281111824cda232d35d94fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    agv_msgs/BezierSplinePointWProperties[] path
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
    MSG: agv_msgs/BezierSplinePointWProperties
    Header header
    geometry_msgs/Point coord
    geometry_msgs/Point cp0
    geometry_msgs/Point cp1
    agv_msgs/SplineDriveParam[] drive_param
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: agv_msgs/SplineDriveParam
    float64 position_offset
    float64 desired_v
    float64 max_a
    float64 incline_angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SplinePath(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = BezierSplinePointWProperties.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    return resolved;
    }
};

module.exports = SplinePath;
