// Generated by gencpp from file agv_msgs/NavigationConfig.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_NAVIGATIONCONFIG_H
#define AGV_MSGS_MESSAGE_NAVIGATIONCONFIG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace agv_msgs
{
template <class ContainerAllocator>
struct NavigationConfig_
{
  typedef NavigationConfig_<ContainerAllocator> Type;

  NavigationConfig_()
    : direction(0)
    , repeat_mode(0)
    , no_of_loops(0)  {
    }
  NavigationConfig_(const ContainerAllocator& _alloc)
    : direction(0)
    , repeat_mode(0)
    , no_of_loops(0)  {
  (void)_alloc;
    }



   typedef uint8_t _direction_type;
  _direction_type direction;

   typedef uint8_t _repeat_mode_type;
  _repeat_mode_type repeat_mode;

   typedef uint16_t _no_of_loops_type;
  _no_of_loops_type no_of_loops;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DIR_FORWARD)
  #undef DIR_FORWARD
#endif
#if defined(_WIN32) && defined(DIR_CLOCKWISE)
  #undef DIR_CLOCKWISE
#endif
#if defined(_WIN32) && defined(DIR_REVERSE)
  #undef DIR_REVERSE
#endif
#if defined(_WIN32) && defined(DIR_COUNTERCLOCKWISE)
  #undef DIR_COUNTERCLOCKWISE
#endif
#if defined(_WIN32) && defined(REPEAT_NONE)
  #undef REPEAT_NONE
#endif
#if defined(_WIN32) && defined(REPEAT_CIRCULAR)
  #undef REPEAT_CIRCULAR
#endif
#if defined(_WIN32) && defined(REPEAT_DOUBLE_BACK)
  #undef REPEAT_DOUBLE_BACK
#endif
#if defined(_WIN32) && defined(INFINITE_LOOPS)
  #undef INFINITE_LOOPS
#endif
#if defined(_WIN32) && defined(SINGLE_EXECUTION)
  #undef SINGLE_EXECUTION
#endif

  enum {
    DIR_FORWARD = 0u,
    DIR_CLOCKWISE = 0u,
    DIR_REVERSE = 1u,
    DIR_COUNTERCLOCKWISE = 1u,
    REPEAT_NONE = 0u,
    REPEAT_CIRCULAR = 1u,
    REPEAT_DOUBLE_BACK = 2u,
    INFINITE_LOOPS = 0u,
    SINGLE_EXECUTION = 1u,
  };


  typedef boost::shared_ptr< ::agv_msgs::NavigationConfig_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::NavigationConfig_<ContainerAllocator> const> ConstPtr;

}; // struct NavigationConfig_

typedef ::agv_msgs::NavigationConfig_<std::allocator<void> > NavigationConfig;

typedef boost::shared_ptr< ::agv_msgs::NavigationConfig > NavigationConfigPtr;
typedef boost::shared_ptr< ::agv_msgs::NavigationConfig const> NavigationConfigConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::NavigationConfig_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::NavigationConfig_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::NavigationConfig_<ContainerAllocator1> & lhs, const ::agv_msgs::NavigationConfig_<ContainerAllocator2> & rhs)
{
  return lhs.direction == rhs.direction &&
    lhs.repeat_mode == rhs.repeat_mode &&
    lhs.no_of_loops == rhs.no_of_loops;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::NavigationConfig_<ContainerAllocator1> & lhs, const ::agv_msgs::NavigationConfig_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::NavigationConfig_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::NavigationConfig_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::NavigationConfig_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb4f63e9ded9599f26fd23654a8fbe60";
  }

  static const char* value(const ::agv_msgs::NavigationConfig_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb4f63e9ded9599fULL;
  static const uint64_t static_value2 = 0x26fd23654a8fbe60ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/NavigationConfig";
  }

  static const char* value(const ::agv_msgs::NavigationConfig_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 direction\n"
"uint8 DIR_FORWARD=0\n"
"uint8 DIR_CLOCKWISE=0\n"
"uint8 DIR_REVERSE=1\n"
"uint8 DIR_COUNTERCLOCKWISE=1\n"
"\n"
"uint8 repeat_mode\n"
"uint8 REPEAT_NONE=0\n"
"uint8 REPEAT_CIRCULAR=1\n"
"uint8 REPEAT_DOUBLE_BACK=2\n"
"\n"
"uint16 no_of_loops\n"
"uint8 INFINITE_LOOPS = 0\n"
"uint8 SINGLE_EXECUTION = 1\n"
;
  }

  static const char* value(const ::agv_msgs::NavigationConfig_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.repeat_mode);
      stream.next(m.no_of_loops);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigationConfig_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::NavigationConfig_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::NavigationConfig_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.direction);
    s << indent << "repeat_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.repeat_mode);
    s << indent << "no_of_loops: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.no_of_loops);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_NAVIGATIONCONFIG_H
