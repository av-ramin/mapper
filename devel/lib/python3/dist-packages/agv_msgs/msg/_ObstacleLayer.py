# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from agv_msgs/ObstacleLayer.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import agv_msgs.msg

class ObstacleLayer(genpy.Message):
  _md5sum = "8bd0537b4fe7e49768bd2ae71fd5bb22"
  _type = "agv_msgs/ObstacleLayer"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string name
agv_msgs/ID id
uint8[4] color
uint8 order
================================================================================
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0
"""
  __slots__ = ['name','id','color','order']
  _slot_types = ['string','agv_msgs/ID','uint8[4]','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name,id,color,order

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ObstacleLayer, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name is None:
        self.name = ''
      if self.id is None:
        self.id = agv_msgs.msg.ID()
      if self.color is None:
        self.color = b'\0'*4
      if self.order is None:
        self.order = 0
    else:
      self.name = ''
      self.id = agv_msgs.msg.ID()
      self.color = b'\0'*4
      self.order = 0

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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id.data
      buff.write(_get_struct_I().pack(_x))
      _x = self.color
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_4B().pack(*_x))
      else:
        buff.write(_get_struct_4s().pack(_x))
      _x = self.order
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
      if self.id is None:
        self.id = agv_msgs.msg.ID()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      start = end
      end += 4
      (self.id.data,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      self.color = str[start:end]
      start = end
      end += 1
      (self.order,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.id.data
      buff.write(_get_struct_I().pack(_x))
      _x = self.color
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_4B().pack(*_x))
      else:
        buff.write(_get_struct_4s().pack(_x))
      _x = self.order
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
      if self.id is None:
        self.id = agv_msgs.msg.ID()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name = str[start:end]
      start = end
      end += 4
      (self.id.data,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      self.color = str[start:end]
      start = end
      end += 1
      (self.order,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4B = None
def _get_struct_4B():
    global _struct_4B
    if _struct_4B is None:
        _struct_4B = struct.Struct("<4B")
    return _struct_4B
_struct_4s = None
def _get_struct_4s():
    global _struct_4s
    if _struct_4s is None:
        _struct_4s = struct.Struct("<4s")
    return _struct_4s
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
