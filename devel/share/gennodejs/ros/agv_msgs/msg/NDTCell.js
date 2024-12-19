// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NDTCell {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centroid = null;
      this.covariance = null;
      this.num_points = null;
    }
    else {
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('num_points')) {
        this.num_points = initObj.num_points
      }
      else {
        this.num_points = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NDTCell
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centroid, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 9) {
      throw new Error('Unable to serialize array field covariance - length must be 9')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 9);
    // Serialize message field [num_points]
    bufferOffset = _serializer.uint64(obj.num_points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NDTCell
    let len;
    let data = new NDTCell(null);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [num_points]
    data.num_points = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/NDTCell';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65aeba4f5b8d0bf1ffd3b8955d3f8799';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NDTCell(null);
    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(9).fill(0)
    }

    if (msg.num_points !== undefined) {
      resolved.num_points = msg.num_points;
    }
    else {
      resolved.num_points = 0
    }

    return resolved;
    }
};

module.exports = NDTCell;
