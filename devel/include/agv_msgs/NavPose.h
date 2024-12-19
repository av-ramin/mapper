// Generated by gencpp from file agv_msgs/NavPose.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_NAVPOSE_H
#define AGV_MSGS_MESSAGE_NAVPOSE_H


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
struct NavPose_
{
  typedef NavPose_<ContainerAllocator> Type;

  NavPose_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , theta(0.0)
    , type(0)  {
    }
  NavPose_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , theta(0.0)
    , type(0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _theta_type;
  _theta_type theta;

   typedef uint8_t _type_type;
  _type_type type;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif

  enum {
    UNKNOWN = 0u,
  };


  typedef boost::shared_ptr< ::agv_msgs::NavPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::NavPose_<ContainerAllocator> const> ConstPtr;

}; // struct NavPose_

typedef ::agv_msgs::NavPose_<std::allocator<void> > NavPose;

typedef boost::shared_ptr< ::agv_msgs::NavPose > NavPosePtr;
typedef boost::shared_ptr< ::agv_msgs::NavPose const> NavPoseConstPtr;

// constants requiring out of line definition

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::NavPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::NavPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::NavPose_<ContainerAllocator1> & lhs, const ::agv_msgs::NavPose_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.theta == rhs.theta &&
    lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::NavPose_<ContainerAllocator1> & lhs, const ::agv_msgs::NavPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::NavPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::NavPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::NavPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::NavPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::NavPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::NavPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::NavPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9fc6322717759e20499f9f9bdd070351";
  }

  static const char* value(const ::agv_msgs::NavPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9fc6322717759e20ULL;
  static const uint64_t static_value2 = 0x499f9f9bdd070351ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::NavPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/NavPose";
  }

  static const char* value(const ::agv_msgs::NavPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::NavPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 theta\n"
"\n"
"uint8 type\n"
"uint8 UNKNOWN=0\n"
;
  }

  static const char* value(const ::agv_msgs::NavPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::NavPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.theta);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::NavPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::NavPose_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_NAVPOSE_H