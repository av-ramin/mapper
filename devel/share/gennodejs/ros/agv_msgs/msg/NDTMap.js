// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NDTCell = require('./NDTCell.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NDTMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cloud_bounds_min = null;
      this.cloud_bounds_max = null;
      this.grid_bounds_min = null;
      this.grid_bounds_max = null;
      this.grid_resolution = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cloud_bounds_min')) {
        this.cloud_bounds_min = initObj.cloud_bounds_min
      }
      else {
        this.cloud_bounds_min = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cloud_bounds_max')) {
        this.cloud_bounds_max = initObj.cloud_bounds_max
      }
      else {
        this.cloud_bounds_max = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('grid_bounds_min')) {
        this.grid_bounds_min = initObj.grid_bounds_min
      }
      else {
        this.grid_bounds_min = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('grid_bounds_max')) {
        this.grid_bounds_max = initObj.grid_bounds_max
      }
      else {
        this.grid_bounds_max = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('grid_resolution')) {
        this.grid_resolution = initObj.grid_resolution
      }
      else {
        this.grid_resolution = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NDTMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cloud_bounds_min]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cloud_bounds_min, buffer, bufferOffset);
    // Serialize message field [cloud_bounds_max]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cloud_bounds_max, buffer, bufferOffset);
    // Serialize message field [grid_bounds_min]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.grid_bounds_min, buffer, bufferOffset);
    // Serialize message field [grid_bounds_max]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.grid_bounds_max, buffer, bufferOffset);
    // Serialize message field [grid_resolution]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.grid_resolution, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = NDTCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NDTMap
    let len;
    let data = new NDTMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_bounds_min]
    data.cloud_bounds_min = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud_bounds_max]
    data.cloud_bounds_max = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid_bounds_min]
    data.grid_bounds_min = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid_bounds_max]
    data.grid_bounds_max = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid_resolution]
    data.grid_resolution = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cells]
    // Deserialize array length for message field [cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cells[i] = NDTCell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 104 * object.cells.length;
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NDTMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d146211345303955e78e8c67700a3b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header                  header
    
    geometry_msgs/Vector3   cloud_bounds_min
    geometry_msgs/Vector3   cloud_bounds_max
    
    geometry_msgs/Vector3   grid_bounds_min
    geometry_msgs/Vector3   grid_bounds_max
    
    geometry_msgs/Vector3   grid_resolution
    
    NDTCell[]               cells
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: agv_msgs/NDTCell
    geometry_msgs/Point  centroid
    float64[9]           covariance
    uint64               num_points
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NDTMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cloud_bounds_min !== undefined) {
      resolved.cloud_bounds_min = geometry_msgs.msg.Vector3.Resolve(msg.cloud_bounds_min)
    }
    else {
      resolved.cloud_bounds_min = new geometry_msgs.msg.Vector3()
    }

    if (msg.cloud_bounds_max !== undefined) {
      resolved.cloud_bounds_max = geometry_msgs.msg.Vector3.Resolve(msg.cloud_bounds_max)
    }
    else {
      resolved.cloud_bounds_max = new geometry_msgs.msg.Vector3()
    }

    if (msg.grid_bounds_min !== undefined) {
      resolved.grid_bounds_min = geometry_msgs.msg.Vector3.Resolve(msg.grid_bounds_min)
    }
    else {
      resolved.grid_bounds_min = new geometry_msgs.msg.Vector3()
    }

    if (msg.grid_bounds_max !== undefined) {
      resolved.grid_bounds_max = geometry_msgs.msg.Vector3.Resolve(msg.grid_bounds_max)
    }
    else {
      resolved.grid_bounds_max = new geometry_msgs.msg.Vector3()
    }

    if (msg.grid_resolution !== undefined) {
      resolved.grid_resolution = geometry_msgs.msg.Vector3.Resolve(msg.grid_resolution)
    }
    else {
      resolved.grid_resolution = new geometry_msgs.msg.Vector3()
    }

    if (msg.cells !== undefined) {
      resolved.cells = new Array(msg.cells.length);
      for (let i = 0; i < resolved.cells.length; ++i) {
        resolved.cells[i] = NDTCell.Resolve(msg.cells[i]);
      }
    }
    else {
      resolved.cells = []
    }

    return resolved;
    }
};

module.exports = NDTMap;
