// Generated by gencpp from file agv_msgs/ProximitySafetyStatus.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_PROXIMITYSAFETYSTATUS_H
#define AGV_MSGS_MESSAGE_PROXIMITYSAFETYSTATUS_H


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
struct ProximitySafetyStatus_
{
  typedef ProximitySafetyStatus_<ContainerAllocator> Type;

  ProximitySafetyStatus_()
    : header()
    , data(0.0)
    , status(0)  {
    }
  ProximitySafetyStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(0.0)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _data_type;
  _data_type data;

   typedef uint8_t _status_type;
  _status_type status;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(OK)
  #undef OK
#endif
#if defined(_WIN32) && defined(OK_BUT_TOO_SHAKY)
  #undef OK_BUT_TOO_SHAKY
#endif
#if defined(_WIN32) && defined(STARTING)
  #undef STARTING
#endif
#if defined(_WIN32) && defined(INIT)
  #undef INIT
#endif
#if defined(_WIN32) && defined(DATA_MISSING)
  #undef DATA_MISSING
#endif
#if defined(_WIN32) && defined(PROXIMITY_SLOW)
  #undef PROXIMITY_SLOW
#endif
#if defined(_WIN32) && defined(PROXIMITY_ALERT)
  #undef PROXIMITY_ALERT
#endif
#if defined(_WIN32) && defined(STOP)
  #undef STOP
#endif
#if defined(_WIN32) && defined(FORWARD)
  #undef FORWARD
#endif
#if defined(_WIN32) && defined(BACKWARD)
  #undef BACKWARD
#endif
#if defined(_WIN32) && defined(EMPTY)
  #undef EMPTY
#endif
#if defined(_WIN32) && defined(ALL_ZEROES)
  #undef ALL_ZEROES
#endif

  enum {
    OK = 0u,
    OK_BUT_TOO_SHAKY = 1u,
    STARTING = 2u,
    INIT = 3u,
    DATA_MISSING = 4u,
    PROXIMITY_SLOW = 5u,
    PROXIMITY_ALERT = 6u,
    STOP = 10u,
    FORWARD = 11u,
    BACKWARD = 12u,
    EMPTY = 13u,
    ALL_ZEROES = 14u,
  };


  typedef boost::shared_ptr< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ProximitySafetyStatus_

typedef ::agv_msgs::ProximitySafetyStatus_<std::allocator<void> > ProximitySafetyStatus;

typedef boost::shared_ptr< ::agv_msgs::ProximitySafetyStatus > ProximitySafetyStatusPtr;
typedef boost::shared_ptr< ::agv_msgs::ProximitySafetyStatus const> ProximitySafetyStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator1> & lhs, const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data &&
    lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator1> & lhs, const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4676bf30d3543840700826c4e939d3d7";
  }

  static const char* value(const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4676bf30d3543840ULL;
  static const uint64_t static_value2 = 0x700826c4e939d3d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/ProximitySafetyStatus";
  }

  static const char* value(const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header  header\n"
"float32 data\n"
"\n"
"uint8 status\n"
"uint8 OK=0\n"
"uint8 OK_BUT_TOO_SHAKY=1\n"
"uint8 STARTING=2\n"
"uint8 INIT=3\n"
"uint8 DATA_MISSING=4\n"
"uint8 PROXIMITY_SLOW=5\n"
"uint8 PROXIMITY_ALERT=6\n"
"uint8 STOP=10\n"
"uint8 FORWARD=11\n"
"uint8 BACKWARD=12\n"
"uint8 EMPTY=13\n"
"uint8 ALL_ZEROES=14\n"
"\n"
"# Statuses for using with proximity safety:\n"
"# 0 - all OK (data is time since last good laser_shake, but data is below warning threshold)\n"
"# 1 - laser_shake is unreliable, single_column is ok (data is time since last good laser_shake)\n"
"# 2 - starting up (data is time since beginning of starting)\n"
"# 3 - initializing - data is flowing (data is time since beginning of init)\n"
"# 4 - data missing (data is time since last data)\n"
"# 5 - either a small obstacle is detected or a larger obstacle is detected a bit farther (data is distance to obstacle)\n"
"# 6 - proximity alert (data is distance to obstacle)\n"
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
;
  }

  static const char* value(const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProximitySafetyStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::ProximitySafetyStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data: ";
    Printer<float>::stream(s, indent + "  ", v.data);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_PROXIMITYSAFETYSTATUS_H
