// Generated by gencpp from file agv_msgs/ObstacleInfo.msg
// DO NOT EDIT!


#ifndef AGV_MSGS_MESSAGE_OBSTACLEINFO_H
#define AGV_MSGS_MESSAGE_OBSTACLEINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <agv_msgs/ID.h>

namespace agv_msgs
{
template <class ContainerAllocator>
struct ObstacleInfo_
{
  typedef ObstacleInfo_<ContainerAllocator> Type;

  ObstacleInfo_()
    : description()
    , symbol(0)
    , layer_id()
    , enabled(false)
    , priority(0)
    , operation(0)  {
    }
  ObstacleInfo_(const ContainerAllocator& _alloc)
    : description(_alloc)
    , symbol(0)
    , layer_id(_alloc)
    , enabled(false)
    , priority(0)
    , operation(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _description_type;
  _description_type description;

   typedef uint16_t _symbol_type;
  _symbol_type symbol;

   typedef  ::agv_msgs::ID_<ContainerAllocator>  _layer_id_type;
  _layer_id_type layer_id;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;

   typedef uint16_t _priority_type;
  _priority_type priority;

   typedef uint8_t _operation_type;
  _operation_type operation;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(REPLACE)
  #undef REPLACE
#endif
#if defined(_WIN32) && defined(ADD)
  #undef ADD
#endif
#if defined(_WIN32) && defined(SUBTRACT)
  #undef SUBTRACT
#endif

  enum {
    REPLACE = 0u,
    ADD = 1u,
    SUBTRACT = 2u,
  };


  typedef boost::shared_ptr< ::agv_msgs::ObstacleInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_msgs::ObstacleInfo_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleInfo_

typedef ::agv_msgs::ObstacleInfo_<std::allocator<void> > ObstacleInfo;

typedef boost::shared_ptr< ::agv_msgs::ObstacleInfo > ObstacleInfoPtr;
typedef boost::shared_ptr< ::agv_msgs::ObstacleInfo const> ObstacleInfoConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_msgs::ObstacleInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_msgs::ObstacleInfo_<ContainerAllocator1> & lhs, const ::agv_msgs::ObstacleInfo_<ContainerAllocator2> & rhs)
{
  return lhs.description == rhs.description &&
    lhs.symbol == rhs.symbol &&
    lhs.layer_id == rhs.layer_id &&
    lhs.enabled == rhs.enabled &&
    lhs.priority == rhs.priority &&
    lhs.operation == rhs.operation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_msgs::ObstacleInfo_<ContainerAllocator1> & lhs, const ::agv_msgs::ObstacleInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_msgs::ObstacleInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_msgs::ObstacleInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_msgs::ObstacleInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "77a1e000112bcc70c977607dda6c239e";
  }

  static const char* value(const ::agv_msgs::ObstacleInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x77a1e000112bcc70ULL;
  static const uint64_t static_value2 = 0xc977607dda6c239eULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_msgs/ObstacleInfo";
  }

  static const char* value(const ::agv_msgs::ObstacleInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string description\n"
"uint16 symbol\n"
"agv_msgs/ID layer_id\n"
"bool enabled\n"
"uint16 priority\n"
"\n"
"uint8 operation\n"
"uint8 REPLACE = 0\n"
"uint8 ADD = 1\n"
"uint8 SUBTRACT = 2\n"
"================================================================================\n"
"MSG: agv_msgs/ID\n"
" uint32 data\n"
"\n"
" uint32 INVALID_ID=0\n"
;
  }

  static const char* value(const ::agv_msgs::ObstacleInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.description);
      stream.next(m.symbol);
      stream.next(m.layer_id);
      stream.next(m.enabled);
      stream.next(m.priority);
      stream.next(m.operation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_msgs::ObstacleInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_msgs::ObstacleInfo_<ContainerAllocator>& v)
  {
    s << indent << "description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.description);
    s << indent << "symbol: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.symbol);
    s << indent << "layer_id: ";
    s << std::endl;
    Printer< ::agv_msgs::ID_<ContainerAllocator> >::stream(s, indent + "  ", v.layer_id);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
    s << indent << "priority: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.priority);
    s << indent << "operation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.operation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_MSGS_MESSAGE_OBSTACLEINFO_H