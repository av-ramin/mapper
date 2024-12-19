// Generated by gencpp from file agv_msgs/EncoderDataStamped.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_ENCODERDATASTAMPED_H
#define AGV_MSGS_MESSAGE_ENCODERDATASTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <agv_msgs/EncoderData.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct EncoderDataStamped_
{
  typedef EncoderDataStamped_<ContainerAllocator> Type;

  EncoderDataStamped_()
    : header()
    , enc()  {
    }
  EncoderDataStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , enc(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::agv_msgs::EncoderData_<ContainerAllocator>  _enc_type;
  _enc_type enc;





  typedef boost::shared_ptr< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> const> ConstPtr;

}; // struct EncoderDataStamped_

typedef ::agv_msgs::EncoderDataStamped_<std::allocator<void> > EncoderDataStamped;

typedef boost::shared_ptr< ::agv_msgs::EncoderDataStamped > EncoderDataStampedPtr;
typedef boost::shared_ptr< ::agv_msgs::EncoderDataStamped const> EncoderDataStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::EncoderDataStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::EncoderDataStamped_<ContainerAllocator1> & lhs, const ::agv_msgs::EncoderDataStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.enc == rhs.enc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::EncoderDataStamped_<ContainerAllocator1> & lhs, const ::agv_msgs::EncoderDataStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91b91fb5bbd81473685cfae3dfecdbe1";
  }

  static const char* value(const ::agv_msgs::EncoderDataStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91b91fb5bbd81473ULL;
  static const uint64_t static_value2 = 0x685cfae3dfecdbe1ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/EncoderDataStamped";
  }

  static const char* value(const ::agv_msgs::EncoderDataStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"EncoderData enc\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: agv_msgs/EncoderData\n"
"float32 velocity\n"
"float32 distance\n"
"\n"
"uint8 units\n"
"uint8 RPM=0     # velocity in rpm,      distance in rotations\n"
"uint8 RAD_S=1   # velocity in rad/s,    distance in radians\n"
"uint8 M_S=2     # velocity in m/s,      distance in metres\n"
"uint8 TICKS=3   # velocity in ticks/s,  distance in ticks\n"
;
  }

  static const char* value(const ::agv_msgs::EncoderDataStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.enc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EncoderDataStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::EncoderDataStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::EncoderDataStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "enc: ";
    s << std::endl;
    Printer< ::agv_msgs::EncoderData_<ContainerAllocator> >::stream(s, indent + "  ", v.enc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_ENCODERDATASTAMPED_H