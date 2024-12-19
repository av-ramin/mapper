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

class Barometer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pressure = null;
      this.altitude = null;
      this.pressure_variance = null;
      this.altitude_variance = null;
      this.altitude_datum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('pressure_variance')) {
        this.pressure_variance = initObj.pressure_variance
      }
      else {
        this.pressure_variance = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_variance')) {
        this.altitude_variance = initObj.altitude_variance
      }
      else {
        this.altitude_variance = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_datum')) {
        this.altitude_datum = initObj.altitude_datum
      }
      else {
        this.altitude_datum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Barometer
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float64(obj.pressure, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [pressure_variance]
    bufferOffset = _serializer.float64(obj.pressure_variance, buffer, bufferOffset);
    // Serialize message field [altitude_variance]
    bufferOffset = _serializer.float64(obj.altitude_variance, buffer, bufferOffset);
    // Serialize message field [altitude_datum]
    bufferOffset = _serializer.uint16(obj.altitude_datum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Barometer
    let len;
    let data = new Barometer(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure_variance]
    data.pressure_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_variance]
    data.altitude_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_datum]
    data.altitude_datum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Barometer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a020ce80c5d250ada5a7e4279fde9898';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 pressure # Pa
    float64 altitude
    
    # 0 is interpreted as variance unknown
    float64 pressure_variance
    float64 altitude_variance
    
    # EPSG code of the vertical datum used for altitude, e.g. 4326 for WGS84.
    # Set to 0 when altitude is not referenced against any datum.
    uint16 altitude_datum
    
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
    const resolved = new Barometer(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.pressure_variance !== undefined) {
      resolved.pressure_variance = msg.pressure_variance;
    }
    else {
      resolved.pressure_variance = 0.0
    }

    if (msg.altitude_variance !== undefined) {
      resolved.altitude_variance = msg.altitude_variance;
    }
    else {
      resolved.altitude_variance = 0.0
    }

    if (msg.altitude_datum !== undefined) {
      resolved.altitude_datum = msg.altitude_datum;
    }
    else {
      resolved.altitude_datum = 0
    }

    return resolved;
    }
};

module.exports = Barometer;
