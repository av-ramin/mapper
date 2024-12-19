// Generated by gencpp from file agv_msgs/ObstacleShape.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_OBSTACLESHAPE_H
#define AGV_MSGS_MESSAGE_OBSTACLESHAPE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <agv_msgs/ID.h>
#include <geometry_msgs/Point32.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct ObstacleShape_
{
  typedef ObstacleShape_<ContainerAllocator> Type;

  ObstacleShape_()
    : id()
    , points()
    , cost(0.0)
    , radius(0.0)
    , frame_id()
    , type(0)  {
    }
  ObstacleShape_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , points(_alloc)
    , cost(0.0)
    , radius(0.0)
    , frame_id(_alloc)
    , type(0)  {
  (void)_alloc;
    }



   typedef  ::agv_msgs::ID_<ContainerAllocator>  _id_type;
  _id_type id;

   typedef std::vector< ::geometry_msgs::Point32_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Point32_<ContainerAllocator> >> _points_type;
  _points_type points;

   typedef float _cost_type;
  _cost_type cost;

   typedef float _radius_type;
  _radius_type radius;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _frame_id_type;
  _frame_id_type frame_id;

   typedef uint8_t _type_type;
  _type_type type;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(INVALID)
  #undef INVALID
#endif
#if defined(_WIN32) && defined(POLYGON)
  #undef POLYGON
#endif
#if defined(_WIN32) && defined(RADIUS)
  #undef RADIUS
#endif
#if defined(_WIN32) && defined(BARRIER)
  #undef BARRIER
#endif

  enum {
    INVALID = 0u,
    POLYGON = 1u,
    RADIUS = 2u,
    BARRIER = 3u,
  };


  typedef boost::shared_ptr< ::agv_msgs::ObstacleShape_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::ObstacleShape_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleShape_

typedef ::agv_msgs::ObstacleShape_<std::allocator<void> > ObstacleShape;

typedef boost::shared_ptr< ::agv_msgs::ObstacleShape > ObstacleShapePtr;
typedef boost::shared_ptr< ::agv_msgs::ObstacleShape const> ObstacleShapeConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::ObstacleShape_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::ObstacleShape_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::ObstacleShape_<ContainerAllocator1> & lhs, const ::agv_msgs::ObstacleShape_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.points == rhs.points &&
    lhs.cost == rhs.cost &&
    lhs.radius == rhs.radius &&
    lhs.frame_id == rhs.frame_id &&
    lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::ObstacleShape_<ContainerAllocator1> & lhs, const ::agv_msgs::ObstacleShape_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ObstacleShape_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ObstacleShape_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ObstacleShape_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4f7260af6ba9afb9ab4a8f3e58a2565";
  }

  static const char* value(const ::agv_msgs::ObstacleShape_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4f7260af6ba9afbULL;
  static const uint64_t static_value2 = 0x9ab4a8f3e58a2565ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/ObstacleShape";
  }

  static const char* value(const ::agv_msgs::ObstacleShape_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/ID id\n"
"geometry_msgs/Point32[] points \n"
"float32 cost\n"
"float32 radius\n"
"string frame_id\n"
"\n"
"uint8 type\n"
"uint8 INVALID = 0\n"
"uint8 POLYGON = 1\n"
"uint8 RADIUS = 2 \n"
"uint8 BARRIER = 3  \n"
"================================================================================\n"
"MSG: agv_msgs/ID\n"
" uint32 data\n"
"\n"
" uint32 INVALID_ID=0\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::agv_msgs::ObstacleShape_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.points);
      stream.next(m.cost);
      stream.next(m.radius);
      stream.next(m.frame_id);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleShape_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::ObstacleShape_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::ObstacleShape_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    s << std::endl;
    Printer< ::agv_msgs::ID_<ContainerAllocator> >::stream(s, indent + "  ", v.id);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "cost: ";
    Printer<float>::stream(s, indent + "  ", v.cost);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.frame_id);
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_OBSTACLESHAPE_H