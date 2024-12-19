// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ProximitySafetyStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.data = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProximitySafetyStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.float32(obj.data, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProximitySafetyStatus
    let len;
    let data = new ProximitySafetyStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ProximitySafetyStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4676bf30d3543840700826c4e939d3d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header
    float32 data
    
    uint8 status
    uint8 OK=0
    uint8 OK_BUT_TOO_SHAKY=1
    uint8 STARTING=2
    uint8 INIT=3
    uint8 DATA_MISSING=4
    uint8 PROXIMITY_SLOW=5
    uint8 PROXIMITY_ALERT=6
    uint8 STOP=10
    uint8 FORWARD=11
    uint8 BACKWARD=12
    uint8 EMPTY=13
    uint8 ALL_ZEROES=14
    
    # Statuses for using with proximity safety:
    # 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)
    # 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)
    # 2 - starting up (data is time since beginning of starting)
    # 3 - initializing - data is flowing (data is time since beginning of init)
    # 4 - data missing (data is time since last data)
    # 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)
    # 6 - proximity alert (data is distance to obstacle)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProximitySafetyStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
ProximitySafetyStatus.Constants = {
  OK: 0,
  OK_BUT_TOO_SHAKY: 1,
  STARTING: 2,
  INIT: 3,
  DATA_MISSING: 4,
  PROXIMITY_SLOW: 5,
  PROXIMITY_ALERT: 6,
  STOP: 10,
  FORWARD: 11,
  BACKWARD: 12,
  EMPTY: 13,
  ALL_ZEROES: 14,
}

module.exports = ProximitySafetyStatus;
