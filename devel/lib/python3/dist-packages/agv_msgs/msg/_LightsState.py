# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from agv_msgs/LightsState.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import agv_msgs.msg

class LightsState(genpy.Message):
  _md5sum = "be4eb97b3931f6aab3264f5b626bd43a"
  _type = "agv_msgs/LightsState"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """agv_msgs/LightState[] states
================================================================================
MSG: agv_msgs/LightState
string name
float32 freq
float32 duty
uint32 periods_set
uint32 periods_remaining
"""
  __slots__ = ['states']
  _slot_types = ['agv_msgs/LightState[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       states

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LightsState, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.states is None:
        self.states = []
    else:
      self.states = []

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
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2f2I().pack(_x.freq, _x.duty, _x.periods_set, _x.periods_remaining))
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
      if self.states is None:
        self.states = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = agv_msgs.msg.LightState()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 16
        (_x.freq, _x.duty, _x.periods_set, _x.periods_remaining,) = _get_struct_2f2I().unpack(str[start:end])
        self.states.append(val1)
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
      length = len(self.states)
      buff.write(_struct_I.pack(length))
      for val1 in self.states:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2f2I().pack(_x.freq, _x.duty, _x.periods_set, _x.periods_remaining))
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
      if self.states is None:
        self.states = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.states = []
      for i in range(0, length):
        val1 = agv_msgs.msg.LightState()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 16
        (_x.freq, _x.duty, _x.periods_set, _x.periods_remaining,) = _get_struct_2f2I().unpack(str[start:end])
        self.states.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f2I = None
def _get_struct_2f2I():
    global _struct_2f2I
    if _struct_2f2I is None:
        _struct_2f2I = struct.Struct("<2f2I")
    return _struct_2f2I
