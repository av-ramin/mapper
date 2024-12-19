// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let jsk_recognition_msgs = _finder('jsk_recognition_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarTrackingArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.bboxes = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = new std_msgs.msg.Int64MultiArray();
      }
      if (initObj.hasOwnProperty('bboxes')) {
        this.bboxes = initObj.bboxes
      }
      else {
        this.bboxes = new jsk_recognition_msgs.msg.BoundingBoxArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarTrackingArray
    // Serialize message field [ids]
    bufferOffset = std_msgs.msg.Int64MultiArray.serialize(obj.ids, buffer, bufferOffset);
    // Serialize message field [bboxes]
    bufferOffset = jsk_recognition_msgs.msg.BoundingBoxArray.serialize(obj.bboxes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarTrackingArray
    let len;
    let data = new LidarTrackingArray(null);
    // Deserialize message field [ids]
    data.ids = std_msgs.msg.Int64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [bboxes]
    data.bboxes = jsk_recognition_msgs.msg.BoundingBoxArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int64MultiArray.getMessageSize(object.ids);
    length += jsk_recognition_msgs.msg.BoundingBoxArray.getMessageSize(object.bboxes);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/LidarTrackingArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '941673c615d47028c6cf33c8aedc0d50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int64MultiArray ids
    jsk_recognition_msgs/BoundingBoxArray bboxes
    ================================================================================
    MSG: std_msgs/Int64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int64[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: jsk_recognition_msgs/BoundingBoxArray
    # BoundingBoxArray is a list of BoundingBox.
    # You can use jsk_rviz_plugins to visualize BoungingBoxArray on rviz.
    Header header
    BoundingBox[] boxes
    
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
    MSG: jsk_recognition_msgs/BoundingBox
    # BoundingBox represents a oriented bounding box.
    Header header
    geometry_msgs/Pose pose
    geometry_msgs/Vector3 dimensions  # size of bounding box (x, y, z)
    # You can use this field to hold value such as likelihood
    float32 value
    uint32 label
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarTrackingArray(null);
    if (msg.ids !== undefined) {
      resolved.ids = std_msgs.msg.Int64MultiArray.Resolve(msg.ids)
    }
    else {
      resolved.ids = new std_msgs.msg.Int64MultiArray()
    }

    if (msg.bboxes !== undefined) {
      resolved.bboxes = jsk_recognition_msgs.msg.BoundingBoxArray.Resolve(msg.bboxes)
    }
    else {
      resolved.bboxes = new jsk_recognition_msgs.msg.BoundingBoxArray()
    }

    return resolved;
    }
};

module.exports = LidarTrackingArray;
