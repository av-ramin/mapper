// Generated by gencpp from file agv_msgs/DriveMode.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_DRIVEMODE_H
#define AGV_MSGS_MESSAGE_DRIVEMODE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct DriveMode_
{
  typedef DriveMode_<ContainerAllocator> Type;

  DriveMode_()
    : header()
    , mode(0)
    , deviation(0.0)
    , change_time()  {
    }
  DriveMode_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(0)
    , deviation(0.0)
    , change_time()  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _mode_type;
  _mode_type mode;

   typedef double _deviation_type;
  _deviation_type deviation;

   typedef ros::Time _change_time_type;
  _change_time_type change_time;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(SLOW)
  #undef SLOW
#endif
#if defined(_WIN32) && defined(TURNING)
  #undef TURNING
#endif
#if defined(_WIN32) && defined(BACKWARD)
  #undef BACKWARD
#endif
#if defined(_WIN32) && defined(FORWARD)
  #undef FORWARD
#endif

  enum {
    UNKNOWN = 0u,
    SLOW = 1u,
    TURNING = 2u,
    BACKWARD = 3u,
    FORWARD = 4u,
  };


  typedef boost::shared_ptr< ::agv_msgs::DriveMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::DriveMode_<ContainerAllocator> const> ConstPtr;

}; // struct DriveMode_

typedef ::agv_msgs::DriveMode_<std::allocator<void> > DriveMode;

typedef boost::shared_ptr< ::agv_msgs::DriveMode > DriveModePtr;
typedef boost::shared_ptr< ::agv_msgs::DriveMode const> DriveModeConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::DriveMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::DriveMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::DriveMode_<ContainerAllocator1> & lhs, const ::agv_msgs::DriveMode_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mode == rhs.mode &&
    lhs.deviation == rhs.deviation &&
    lhs.change_time == rhs.change_time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::DriveMode_<ContainerAllocator1> & lhs, const ::agv_msgs::DriveMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::DriveMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::DriveMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::DriveMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::DriveMode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::DriveMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::DriveMode_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::DriveMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "948b56633c65a320ea3f2c754c335b0b";
  }

  static const char* value(const ::agv_msgs::DriveMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x948b56633c65a320ULL;
  static const uint64_t static_value2 = 0xea3f2c754c335b0bULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::DriveMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/DriveMode";
  }

  static const char* value(const ::agv_msgs::DriveMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::DriveMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint8 UNKNOWN = 0\n"
"uint8 SLOW = 1\n"
"uint8 TURNING = 2\n"
"uint8 BACKWARD = 3\n"
"uint8 FORWARD = 4\n"
"uint8 mode\n"
"float64 deviation\n"
"time change_time\n"
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
;
  }

  static const char* value(const ::agv_msgs::DriveMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::DriveMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.deviation);
      stream.next(m.change_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::DriveMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::DriveMode_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "deviation: ";
    Printer<double>::stream(s, indent + "  ", v.deviation);
    s << indent << "change_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.change_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_DRIVEMODE_H
