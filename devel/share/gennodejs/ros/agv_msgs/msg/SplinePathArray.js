// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SplinePath = require('./SplinePath.js');

//-----------------------------------------------------------

class SplinePathArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.smooth_paths = null;
    }
    else {
      if (initObj.hasOwnProperty('smooth_paths')) {
        this.smooth_paths = initObj.smooth_paths
      }
      else {
        this.smooth_paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SplinePathArray
    // Serialize message field [smooth_paths]
    // Serialize the length for message field [smooth_paths]
    bufferOffset = _serializer.uint32(obj.smooth_paths.length, buffer, bufferOffset);
    obj.smooth_paths.forEach((val) => {
      bufferOffset = SplinePath.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SplinePathArray
    let len;
    let data = new SplinePathArray(null);
    // Deserialize message field [smooth_paths]
    // Deserialize array length for message field [smooth_paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.smooth_paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.smooth_paths[i] = SplinePath.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.smooth_paths.forEach((val) => {
      length += SplinePath.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/SplinePathArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05cf4559b25a14e1afdea5a89a416603';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agv_msgs/SplinePath[] smooth_paths
    ================================================================================
    MSG: agv_msgs/SplinePath
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
    const resolved = new SplinePathArray(null);
    if (msg.smooth_paths !== undefined) {
      resolved.smooth_paths = new Array(msg.smooth_paths.length);
      for (let i = 0; i < resolved.smooth_paths.length; ++i) {
        resolved.smooth_paths[i] = SplinePath.Resolve(msg.smooth_paths[i]);
      }
    }
    else {
      resolved.smooth_paths = []
    }

    return resolved;
    }
};

module.exports = SplinePathArray;
