// Generated by gencpp from file agv_msgs/Mission.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_MISSION_H
#define AGV_MSGS_MESSAGE_MISSION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <agv_msgs/MissionInfo.h>
#include <agv_msgs/MissionProfile.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct Mission_
{
  typedef Mission_<ContainerAllocator> Type;

  Mission_()
    : info()
    , profile()  {
    }
  Mission_(const ContainerAllocator& _alloc)
    : info(_alloc)
    , profile(_alloc)  {
  (void)_alloc;
    }



   typedef  ::agv_msgs::MissionInfo_<ContainerAllocator>  _info_type;
  _info_type info;

   typedef  ::agv_msgs::MissionProfile_<ContainerAllocator>  _profile_type;
  _profile_type profile;





  typedef boost::shared_ptr< ::agv_msgs::Mission_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::Mission_<ContainerAllocator> const> ConstPtr;

}; // struct Mission_

typedef ::agv_msgs::Mission_<std::allocator<void> > Mission;

typedef boost::shared_ptr< ::agv_msgs::Mission > MissionPtr;
typedef boost::shared_ptr< ::agv_msgs::Mission const> MissionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::Mission_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::Mission_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::Mission_<ContainerAllocator1> & lhs, const ::agv_msgs::Mission_<ContainerAllocator2> & rhs)
{
  return lhs.info == rhs.info &&
    lhs.profile == rhs.profile;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::Mission_<ContainerAllocator1> & lhs, const ::agv_msgs::Mission_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::Mission_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::Mission_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::Mission_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::Mission_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::Mission_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::Mission_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::Mission_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fdb503fbfee60173009aba68eb8b2b65";
  }

  static const char* value(const ::agv_msgs::Mission_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfdb503fbfee60173ULL;
  static const uint64_t static_value2 = 0x009aba68eb8b2b65ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::Mission_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/Mission";
  }

  static const char* value(const ::agv_msgs::Mission_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::Mission_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/MissionInfo info\n"
"agv_msgs/MissionProfile profile\n"
"================================================================================\n"
"MSG: agv_msgs/MissionInfo\n"
"  agv_msgs/ID id\n"
"  string name\n"
"  string description\n"
"  string group\n"
"  time creation_time\n"
"  time modification_time\n"
"================================================================================\n"
"MSG: agv_msgs/ID\n"
" uint32 data\n"
"\n"
" uint32 INVALID_ID=0\n"
"\n"
"================================================================================\n"
"MSG: agv_msgs/MissionProfile\n"
"agv_msgs/ID path_id\n"
"agv_msgs/NavigationConfig config\n"
"agv_msgs/ID[] behaviors\n"
"agv_msgs/ID[] zones\n"
"================================================================================\n"
"MSG: agv_msgs/NavigationConfig\n"
"uint8 direction\n"
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

  static const char* value(const ::agv_msgs::Mission_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::Mission_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.info);
      stream.next(m.profile);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Mission_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::Mission_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::Mission_<ContainerAllocator>& v)
  {
    s << indent << "info: ";
    s << std::endl;
    Printer< ::agv_msgs::MissionInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.info);
    s << indent << "profile: ";
    s << std::endl;
    Printer< ::agv_msgs::MissionProfile_<ContainerAllocator> >::stream(s, indent + "  ", v.profile);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_MISSION_H
