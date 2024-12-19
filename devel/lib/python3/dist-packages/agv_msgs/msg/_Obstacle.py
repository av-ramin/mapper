# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from agv_msgs/Obstacle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import agv_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class Obstacle(genpy.Message):
  _md5sum = "f9a9ae43bd863b8343b3c3c58447e9df"
  _type = "agv_msgs/Obstacle"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
agv_msgs/ObstacleInfo info
agv_msgs/ObstacleShape shape 
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
MSG: agv_msgs/ObstacleInfo
string description
uint16 symbol
agv_msgs/ID layer_id
bool enabled
uint16 priority

uint8 operation
uint8 REPLACE = 0
uint8 ADD = 1
uint8 SUBTRACT = 2
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/ObstacleShape
agv_msgs/ID id
geometry_msgs/Point32[] points 
float32 cost
float32 radius
string frame_id

uint8 type
uint8 INVALID = 0
uint8 POLYGON = 1
uint8 RADIUS = 2 
uint8 BARRIER = 3  
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z"""
  __slots__ = ['header','info','shape']
  _slot_types = ['std_msgs/Header','agv_msgs/ObstacleInfo','agv_msgs/ObstacleShape']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,info,shape

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Obstacle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.info is None:
        self.info = agv_msgs.msg.ObstacleInfo()
      if self.shape is None:
        self.shape = agv_msgs.msg.ObstacleShape()
    else:
      self.header = std_msgs.msg.Header()
      self.info = agv_msgs.msg.ObstacleInfo()
      self.shape = agv_msgs.msg.ObstacleShape()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.info.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HIBHBI().pack(_x.info.symbol, _x.info.layer_id.data, _x.info.enabled, _x.info.priority, _x.info.operation, _x.shape.id.data))
      length = len(self.shape.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.shape.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2f().pack(_x.shape.cost, _x.shape.radius))
      _x = self.shape.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.shape.type
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.info is None:
        self.info = agv_msgs.msg.ObstacleInfo()
      if self.shape is None:
        self.shape = agv_msgs.msg.ObstacleShape()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.info.description = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.info.description = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.info.symbol, _x.info.layer_id.data, _x.info.enabled, _x.info.priority, _x.info.operation, _x.shape.id.data,) = _get_struct_HIBHBI().unpack(str[start:end])
      self.info.enabled = bool(self.info.enabled)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shape.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.shape.points.append(val1)
      _x = self
      start = end
      end += 8
      (_x.shape.cost, _x.shape.radius,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shape.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.shape.frame_id = str[start:end]
      start = end
      end += 1
      (self.shape.type,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.info.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HIBHBI().pack(_x.info.symbol, _x.info.layer_id.data, _x.info.enabled, _x.info.priority, _x.info.operation, _x.shape.id.data))
      length = len(self.shape.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.shape.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2f().pack(_x.shape.cost, _x.shape.radius))
      _x = self.shape.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.shape.type
      buff.write(_get_struct_B().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.info is None:
        self.info = agv_msgs.msg.ObstacleInfo()
      if self.shape is None:
        self.shape = agv_msgs.msg.ObstacleShape()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.info.description = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.info.description = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.info.symbol, _x.info.layer_id.data, _x.info.enabled, _x.info.priority, _x.info.operation, _x.shape.id.data,) = _get_struct_HIBHBI().unpack(str[start:end])
      self.info.enabled = bool(self.info.enabled)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shape.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.shape.points.append(val1)
      _x = self
      start = end
      end += 8
      (_x.shape.cost, _x.shape.radius,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shape.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.shape.frame_id = str[start:end]
      start = end
      end += 1
      (self.shape.type,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_HIBHBI = None
def _get_struct_HIBHBI():
    global _struct_HIBHBI
    if _struct_HIBHBI is None:
        _struct_HIBHBI = struct.Struct("<HIBHBI")
    return _struct_HIBHBI
