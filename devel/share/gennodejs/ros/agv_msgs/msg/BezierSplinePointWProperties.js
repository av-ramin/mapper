// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SplineDriveParam = require('./SplineDriveParam.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BezierSplinePointWProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.coord = null;
      this.cp0 = null;
      this.cp1 = null;
      this.drive_param = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('coord')) {
        this.coord = initObj.coord
      }
      else {
        this.coord = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('cp0')) {
        this.cp0 = initObj.cp0
      }
      else {
        this.cp0 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('cp1')) {
        this.cp1 = initObj.cp1
      }
      else {
        this.cp1 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('drive_param')) {
        this.drive_param = initObj.drive_param
      }
      else {
        this.drive_param = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BezierSplinePointWProperties
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [coord]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.coord, buffer, bufferOffset);
    // Serialize message field [cp0]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cp0, buffer, bufferOffset);
    // Serialize message field [cp1]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cp1, buffer, bufferOffset);
    // Serialize message field [drive_param]
    // Serialize the length for message field [drive_param]
    bufferOffset = _serializer.uint32(obj.drive_param.length, buffer, bufferOffset);
    obj.drive_param.forEach((val) => {
      bufferOffset = SplineDriveParam.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BezierSplinePointWProperties
    let len;
    let data = new BezierSplinePointWProperties(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [coord]
    data.coord = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [cp0]
    data.cp0 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [cp1]
    data.cp1 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_param]
    // Deserialize array length for message field [drive_param]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drive_param = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drive_param[i] = SplineDriveParam.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 32 * object.drive_param.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/BezierSplinePointWProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cdbfbe79a6088558695ff1f7bb13843';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Point coord
    geometry_msgs/Point cp0
    geometry_msgs/Point cp1
    agv_msgs/SplineDriveParam[] drive_param
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
    const resolved = new BezierSplinePointWProperties(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.coord !== undefined) {
      resolved.coord = geometry_msgs.msg.Point.Resolve(msg.coord)
    }
    else {
      resolved.coord = new geometry_msgs.msg.Point()
    }

    if (msg.cp0 !== undefined) {
      resolved.cp0 = geometry_msgs.msg.Point.Resolve(msg.cp0)
    }
    else {
      resolved.cp0 = new geometry_msgs.msg.Point()
    }

    if (msg.cp1 !== undefined) {
      resolved.cp1 = geometry_msgs.msg.Point.Resolve(msg.cp1)
    }
    else {
      resolved.cp1 = new geometry_msgs.msg.Point()
    }

    if (msg.drive_param !== undefined) {
      resolved.drive_param = new Array(msg.drive_param.length);
      for (let i = 0; i < resolved.drive_param.length; ++i) {
        resolved.drive_param[i] = SplineDriveParam.Resolve(msg.drive_param[i]);
      }
    }
    else {
      resolved.drive_param = []
    }

    return resolved;
    }
};

module.exports = BezierSplinePointWProperties;
