# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from agv_msgs/NavigationStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import agv_msgs.msg
import std_msgs.msg

class NavigationStatus(genpy.Message):
  _md5sum = "a149a87a3a79c58017a11d4e6e8cb71c"
  _type = "agv_msgs/NavigationStatus"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
agv_msgs/ID path_id
agv_msgs/ID current_waypoint_id
bool active
bool paused

uint8 mode
uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 RALLY_POINT = 2
uint8 RECORDER = 3

agv_msgs/NavigationConfig config
uint16 loop_iteration
uint8 START_ITERATION = 1
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
MSG: agv_msgs/ID
 uint32 data

 uint32 INVALID_ID=0

================================================================================
MSG: agv_msgs/NavigationConfig
uint8 direction
uint8 DIR_FORWARD=0
uint8 DIR_CLOCKWISE=0
uint8 DIR_REVERSE=1
uint8 DIR_COUNTERCLOCKWISE=1

uint8 repeat_mode
uint8 REPEAT_NONE=0
uint8 REPEAT_CIRCULAR=1
uint8 REPEAT_DOUBLE_BACK=2

uint16 no_of_loops
uint8 INFINITE_LOOPS = 0
uint8 SINGLE_EXECUTION = 1"""
  # Pseudo-constants
  UNKNOWN = 0
  NAVIGATION = 1
  RALLY_POINT = 2
  RECORDER = 3
  START_ITERATION = 1

  __slots__ = ['header','path_id','current_waypoint_id','active','paused','mode','config','loop_iteration']
  _slot_types = ['std_msgs/Header','agv_msgs/ID','agv_msgs/ID','bool','bool','uint8','agv_msgs/NavigationConfig','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,path_id,current_waypoint_id,active,paused,mode,config,loop_iteration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavigationStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.path_id is None:
        self.path_id = agv_msgs.msg.ID()
      if self.current_waypoint_id is None:
        self.current_waypoint_id = agv_msgs.msg.ID()
      if self.active is None:
        self.active = False
      if self.paused is None:
        self.paused = False
      if self.mode is None:
        self.mode = 0
      if self.config is None:
        self.config = agv_msgs.msg.NavigationConfig()
      if self.loop_iteration is None:
        self.loop_iteration = 0
    else:
      self.header = std_msgs.msg.Header()
      self.path_id = agv_msgs.msg.ID()
      self.current_waypoint_id = agv_msgs.msg.ID()
      self.active = False
      self.paused = False
      self.mode = 0
      self.config = agv_msgs.msg.NavigationConfig()
      self.loop_iteration = 0

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
      _x = self
      buff.write(_get_struct_2I5B2H().pack(_x.path_id.data, _x.current_waypoint_id.data, _x.active, _x.paused, _x.mode, _x.config.direction, _x.config.repeat_mode, _x.config.no_of_loops, _x.loop_iteration))
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
      if self.path_id is None:
        self.path_id = agv_msgs.msg.ID()
      if self.current_waypoint_id is None:
        self.current_waypoint_id = agv_msgs.msg.ID()
      if self.config is None:
        self.config = agv_msgs.msg.NavigationConfig()
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
      _x = self
      start = end
      end += 17
      (_x.path_id.data, _x.current_waypoint_id.data, _x.active, _x.paused, _x.mode, _x.config.direction, _x.config.repeat_mode, _x.config.no_of_loops, _x.loop_iteration,) = _get_struct_2I5B2H().unpack(str[start:end])
      self.active = bool(self.active)
      self.paused = bool(self.paused)
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
      _x = self
      buff.write(_get_struct_2I5B2H().pack(_x.path_id.data, _x.current_waypoint_id.data, _x.active, _x.paused, _x.mode, _x.config.direction, _x.config.repeat_mode, _x.config.no_of_loops, _x.loop_iteration))
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
      if self.path_id is None:
        self.path_id = agv_msgs.msg.ID()
      if self.current_waypoint_id is None:
        self.current_waypoint_id = agv_msgs.msg.ID()
      if self.config is None:
        self.config = agv_msgs.msg.NavigationConfig()
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
      _x = self
      start = end
      end += 17
      (_x.path_id.data, _x.current_waypoint_id.data, _x.active, _x.paused, _x.mode, _x.config.direction, _x.config.repeat_mode, _x.config.no_of_loops, _x.loop_iteration,) = _get_struct_2I5B2H().unpack(str[start:end])
      self.active = bool(self.active)
      self.paused = bool(self.paused)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I5B2H = None
def _get_struct_2I5B2H():
    global _struct_2I5B2H
    if _struct_2I5B2H is None:
        _struct_2I5B2H = struct.Struct("<2I5B2H")
    return _struct_2I5B2H
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
