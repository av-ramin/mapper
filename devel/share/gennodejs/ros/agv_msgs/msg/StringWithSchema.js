// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StringWithSchema {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.schema = null;
      this.format = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('schema')) {
        this.schema = initObj.schema
      }
      else {
        this.schema = '';
      }
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringWithSchema
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [schema]
    bufferOffset = _serializer.string(obj.schema, buffer, bufferOffset);
    // Serialize message field [format]
    bufferOffset = _serializer.uint8(obj.format, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringWithSchema
    let len;
    let data = new StringWithSchema(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [schema]
    data.schema = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [format]
    data.format = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.data);
    length += _getByteLength(object.schema);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/StringWithSchema';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f675b16631313e8f7598f59aa6b9873b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    string schema
    uint8 format
    uint8 JSON=1
    uint8 CSV=2
    uint8 XML=3
    uint8 YAML=4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringWithSchema(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.schema !== undefined) {
      resolved.schema = msg.schema;
    }
    else {
      resolved.schema = ''
    }

    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = 0
    }

    return resolved;
    }
};

// Constants for message
StringWithSchema.Constants = {
  JSON: 1,
  CSV: 2,
  XML: 3,
  YAML: 4,
}

module.exports = StringWithSchema;
