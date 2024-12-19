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

class BagRecorderDump {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.label = null;
      this.size = null;
      this.files = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('files')) {
        this.files = initObj.files
      }
      else {
        this.files = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BagRecorderDump
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int64(obj.size, buffer, bufferOffset);
    // Serialize message field [files]
    bufferOffset = _arraySerializer.string(obj.files, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BagRecorderDump
    let len;
    let data = new BagRecorderDump(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [files]
    data.files = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    length += _getByteLength(object.label);
    object.files.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/BagRecorderDump';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aeb2667881e632e7b14a92b87d768564';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    string label
    int64 size
    string[] files
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BagRecorderDump(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.files !== undefined) {
      resolved.files = msg.files;
    }
    else {
      resolved.files = []
    }

    return resolved;
    }
};

module.exports = BagRecorderDump;
