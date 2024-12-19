// Generated by gencpp from file agv_msgs/FollowmeStatus.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_FOLLOWMESTATUS_H
#define AGV_MSGS_MESSAGE_FOLLOWMESTATUS_H


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
struct FollowmeStatus_
{
  typedef FollowmeStatus_<ContainerAllocator> Type;

  FollowmeStatus_()
    : distance_sp(0.0)
    , angle_sp(0.0)
    , live_distance(0.0)
    , live_angle(0.0)
    , velocity_limit(0.0)
    , chosen_tag_name()
    , dist_on_the_path(0.0)
    , mode_indirect(0)
    , start_active(false)
    , pause_active(false)
    , mode(0)  {
    }
  FollowmeStatus_(const ContainerAllocator& _alloc)
    : distance_sp(0.0)
    , angle_sp(0.0)
    , live_distance(0.0)
    , live_angle(0.0)
    , velocity_limit(0.0)
    , chosen_tag_name(_alloc)
    , dist_on_the_path(0.0)
    , mode_indirect(0)
    , start_active(false)
    , pause_active(false)
    , mode(0)  {
  (void)_alloc;
    }



   typedef float _distance_sp_type;
  _distance_sp_type distance_sp;

   typedef float _angle_sp_type;
  _angle_sp_type angle_sp;

   typedef float _live_distance_type;
  _live_distance_type live_distance;

   typedef float _live_angle_type;
  _live_angle_type live_angle;

   typedef float _velocity_limit_type;
  _velocity_limit_type velocity_limit;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _chosen_tag_name_type;
  _chosen_tag_name_type chosen_tag_name;

   typedef float _dist_on_the_path_type;
  _dist_on_the_path_type dist_on_the_path;

   typedef uint8_t _mode_indirect_type;
  _mode_indirect_type mode_indirect;

   typedef uint8_t _start_active_type;
  _start_active_type start_active;

   typedef uint8_t _pause_active_type;
  _pause_active_type pause_active;

   typedef uint8_t _mode_type;
  _mode_type mode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DIRECT)
  #undef DIRECT
#endif
#if defined(_WIN32) && defined(INDIRECT)
  #undef INDIRECT
#endif

  enum {
    DIRECT = 1u,
    INDIRECT = 2u,
  };


  typedef boost::shared_ptr< ::agv_msgs::FollowmeStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::FollowmeStatus_<ContainerAllocator> const> ConstPtr;

}; // struct FollowmeStatus_

typedef ::agv_msgs::FollowmeStatus_<std::allocator<void> > FollowmeStatus;

typedef boost::shared_ptr< ::agv_msgs::FollowmeStatus > FollowmeStatusPtr;
typedef boost::shared_ptr< ::agv_msgs::FollowmeStatus const> FollowmeStatusConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::FollowmeStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::FollowmeStatus_<ContainerAllocator1> & lhs, const ::agv_msgs::FollowmeStatus_<ContainerAllocator2> & rhs)
{
  return lhs.distance_sp == rhs.distance_sp &&
    lhs.angle_sp == rhs.angle_sp &&
    lhs.live_distance == rhs.live_distance &&
    lhs.live_angle == rhs.live_angle &&
    lhs.velocity_limit == rhs.velocity_limit &&
    lhs.chosen_tag_name == rhs.chosen_tag_name &&
    lhs.dist_on_the_path == rhs.dist_on_the_path &&
    lhs.mode_indirect == rhs.mode_indirect &&
    lhs.start_active == rhs.start_active &&
    lhs.pause_active == rhs.pause_active &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::FollowmeStatus_<ContainerAllocator1> & lhs, const ::agv_msgs::FollowmeStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::FollowmeStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::FollowmeStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::FollowmeStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "352cd66af525f12fc4178354b47bfc2c";
  }

  static const char* value(const ::agv_msgs::FollowmeStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x352cd66af525f12fULL;
  static const uint64_t static_value2 = 0xc4178354b47bfc2cULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/FollowmeStatus";
  }

  static const char* value(const ::agv_msgs::FollowmeStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 distance_sp\n"
"float32 angle_sp\n"
"float32 live_distance\n"
"float32 live_angle\n"
"float32 velocity_limit\n"
"string chosen_tag_name\n"
"float32 dist_on_the_path\n"
"uint8 mode_indirect\n"
"bool start_active\n"
"bool pause_active\n"
"uint8 mode\n"
"uint8 DIRECT=1\n"
"uint8 INDIRECT=2\n"
;
  }

  static const char* value(const ::agv_msgs::FollowmeStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance_sp);
      stream.next(m.angle_sp);
      stream.next(m.live_distance);
      stream.next(m.live_angle);
      stream.next(m.velocity_limit);
      stream.next(m.chosen_tag_name);
      stream.next(m.dist_on_the_path);
      stream.next(m.mode_indirect);
      stream.next(m.start_active);
      stream.next(m.pause_active);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowmeStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::FollowmeStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::FollowmeStatus_<ContainerAllocator>& v)
  {
    s << indent << "distance_sp: ";
    Printer<float>::stream(s, indent + "  ", v.distance_sp);
    s << indent << "angle_sp: ";
    Printer<float>::stream(s, indent + "  ", v.angle_sp);
    s << indent << "live_distance: ";
    Printer<float>::stream(s, indent + "  ", v.live_distance);
    s << indent << "live_angle: ";
    Printer<float>::stream(s, indent + "  ", v.live_angle);
    s << indent << "velocity_limit: ";
    Printer<float>::stream(s, indent + "  ", v.velocity_limit);
    s << indent << "chosen_tag_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.chosen_tag_name);
    s << indent << "dist_on_the_path: ";
    Printer<float>::stream(s, indent + "  ", v.dist_on_the_path);
    s << indent << "mode_indirect: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode_indirect);
    s << indent << "start_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start_active);
    s << indent << "pause_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pause_active);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_FOLLOWMESTATUS_H
