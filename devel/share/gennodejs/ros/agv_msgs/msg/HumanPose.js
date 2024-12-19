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

class HumanPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_points = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_points')) {
        this.pose_points = initObj.pose_points
      }
      else {
        this.pose_points = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanPose
    // Serialize message field [pose_points]
    // Serialize the length for message field [pose_points]
    bufferOffset = _serializer.uint32(obj.pose_points.length, buffer, bufferOffset);
    obj.pose_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanPose
    let len;
    let data = new HumanPose(null);
    // Deserialize message field [pose_points]
    // Deserialize array length for message field [pose_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_points[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pose_points.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/HumanPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e855ff1260c66856127e8a75c6ef452d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D[] pose_points
    float64 score
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanPose(null);
    if (msg.pose_points !== undefined) {
      resolved.pose_points = new Array(msg.pose_points.length);
      for (let i = 0; i < resolved.pose_points.length; ++i) {
        resolved.pose_points[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pose_points[i]);
      }
    }
    else {
      resolved.pose_points = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = HumanPose;
