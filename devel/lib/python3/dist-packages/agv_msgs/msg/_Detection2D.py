# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from agv_msgs/Detection2D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Detection2D(genpy.Message):
  _md5sum = "828b4a851eb90a71558f422ff404dc24"
  _type = "agv_msgs/Detection2D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 class_id
string class_name
float32 probability
int32 track_id
uint32 xmin
uint32 ymin
uint32 xmax
uint32 ymax
float32 yaw_hor
float32 yaw_hor_dev
float32 yaw_ver
float32 yaw_ver_dev
float32 dist
float32 dist_dev"""
  __slots__ = ['class_id','class_name','probability','track_id','xmin','ymin','xmax','ymax','yaw_hor','yaw_hor_dev','yaw_ver','yaw_ver_dev','dist','dist_dev']
  _slot_types = ['int32','string','float32','int32','uint32','uint32','uint32','uint32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       class_id,class_name,probability,track_id,xmin,ymin,xmax,ymax,yaw_hor,yaw_hor_dev,yaw_ver,yaw_ver_dev,dist,dist_dev

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Detection2D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.class_id is None:
        self.class_id = 0
      if self.class_name is None:
        self.class_name = ''
      if self.probability is None:
        self.probability = 0.
      if self.track_id is None:
        self.track_id = 0
      if self.xmin is None:
        self.xmin = 0
      if self.ymin is None:
        self.ymin = 0
      if self.xmax is None:
        self.xmax = 0
      if self.ymax is None:
        self.ymax = 0
      if self.yaw_hor is None:
        self.yaw_hor = 0.
      if self.yaw_hor_dev is None:
        self.yaw_hor_dev = 0.
      if self.yaw_ver is None:
        self.yaw_ver = 0.
      if self.yaw_ver_dev is None:
        self.yaw_ver_dev = 0.
      if self.dist is None:
        self.dist = 0.
      if self.dist_dev is None:
        self.dist_dev = 0.
    else:
      self.class_id = 0
      self.class_name = ''
      self.probability = 0.
      self.track_id = 0
      self.xmin = 0
      self.ymin = 0
      self.xmax = 0
      self.ymax = 0
      self.yaw_hor = 0.
      self.yaw_hor_dev = 0.
      self.yaw_ver = 0.
      self.yaw_ver_dev = 0.
      self.dist = 0.
      self.dist_dev = 0.

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
      _x = self.class_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.class_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fi4I6f().pack(_x.probability, _x.track_id, _x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.yaw_hor, _x.yaw_hor_dev, _x.yaw_ver, _x.yaw_ver_dev, _x.dist, _x.dist_dev))
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
      end = 0
      start = end
      end += 4
      (self.class_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_name = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.probability, _x.track_id, _x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.yaw_hor, _x.yaw_hor_dev, _x.yaw_ver, _x.yaw_ver_dev, _x.dist, _x.dist_dev,) = _get_struct_fi4I6f().unpack(str[start:end])
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
      _x = self.class_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.class_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fi4I6f().pack(_x.probability, _x.track_id, _x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.yaw_hor, _x.yaw_hor_dev, _x.yaw_ver, _x.yaw_ver_dev, _x.dist, _x.dist_dev))
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
      end = 0
      start = end
      end += 4
      (self.class_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_name = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.probability, _x.track_id, _x.xmin, _x.ymin, _x.xmax, _x.ymax, _x.yaw_hor, _x.yaw_hor_dev, _x.yaw_ver, _x.yaw_ver_dev, _x.dist, _x.dist_dev,) = _get_struct_fi4I6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fi4I6f = None
def _get_struct_fi4I6f():
    global _struct_fi4I6f
    if _struct_fi4I6f is None:
        _struct_fi4I6f = struct.Struct("<fi4I6f")
    return _struct_fi4I6f
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
