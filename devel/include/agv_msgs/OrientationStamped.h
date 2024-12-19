// Generated by gencpp from file agv_msgs/OrientationStamped.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_ORIENTATIONSTAMPED_H
#define AGV_MSGS_MESSAGE_ORIENTATIONSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct OrientationStamped_
{
  typedef OrientationStamped_<ContainerAllocator> Type;

  OrientationStamped_()
    : header()
    , quaternion()
    , rpy()  {
    }
  OrientationStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , quaternion(_alloc)
    , rpy(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _quaternion_type;
  _quaternion_type quaternion;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _rpy_type;
  _rpy_type rpy;





  typedef boost::shared_ptr< ::agv_msgs::OrientationStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::OrientationStamped_<ContainerAllocator> const> ConstPtr;

}; // struct OrientationStamped_

typedef ::agv_msgs::OrientationStamped_<std::allocator<void> > OrientationStamped;

typedef boost::shared_ptr< ::agv_msgs::OrientationStamped > OrientationStampedPtr;
typedef boost::shared_ptr< ::agv_msgs::OrientationStamped const> OrientationStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::OrientationStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::OrientationStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::OrientationStamped_<ContainerAllocator1> & lhs, const ::agv_msgs::OrientationStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.quaternion == rhs.quaternion &&
    lhs.rpy == rhs.rpy;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::OrientationStamped_<ContainerAllocator1> & lhs, const ::agv_msgs::OrientationStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::OrientationStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::OrientationStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::OrientationStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7e2d5562f8199f6889d03f38b188837";
  }

  static const char* value(const ::agv_msgs::OrientationStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7e2d5562f8199f6ULL;
  static const uint64_t static_value2 = 0x889d03f38b188837ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/OrientationStamped";
  }

  static const char* value(const ::agv_msgs::OrientationStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header                    header\n"
"geometry_msgs/Quaternion  quaternion \n"
"geometry_msgs/Vector3     rpy\n"
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
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::agv_msgs::OrientationStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.quaternion);
      stream.next(m.rpy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OrientationStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::OrientationStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::OrientationStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "quaternion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.quaternion);
    s << indent << "rpy: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.rpy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_ORIENTATIONSTAMPED_H