// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HumanPose = require('./HumanPose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HumanPoseControlStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.classification = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new HumanPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanPoseControlStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [classification]
    bufferOffset = _serializer.uint8(obj.classification, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = HumanPose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanPoseControlStamped
    let len;
    let data = new HumanPoseControlStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [classification]
    data.classification = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = HumanPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += HumanPose.getMessageSize(object.pose);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/HumanPoseControlStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e84d4a1761d7f7291a8bf764334c8d98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 status
    uint8 POSE_LOCK_IDLE = 0
    uint8 POSE_LOCK_START = 1
    uint8 POSE_LOCK = 2
    
    uint8 classification
    uint8 POSE_LEFT = 0
    uint8 POSE_RIGHT = 1
    uint8 POSE_START = 2
    uint8 POSE_REVERSE = 3
    uint8 POSE_STOP = 4
    uint8 POSE_ELSE = 5
    
    HumanPose pose
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
    MSG: agv_msgs/HumanPose
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
    const resolved = new HumanPoseControlStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = HumanPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new HumanPose()
    }

    return resolved;
    }
};

// Constants for message
HumanPoseControlStamped.Constants = {
  POSE_LOCK_IDLE: 0,
  POSE_LOCK_START: 1,
  POSE_LOCK: 2,
  POSE_LEFT: 0,
  POSE_RIGHT: 1,
  POSE_START: 2,
  POSE_REVERSE: 3,
  POSE_STOP: 4,
  POSE_ELSE: 5,
}

module.exports = HumanPoseControlStamped;
