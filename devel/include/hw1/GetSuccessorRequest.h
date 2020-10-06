// Generated by gencpp from file hw1/GetSuccessorRequest.msg
// DO NOT EDIT!


#ifndef HW1_MESSAGE_GETSUCCESSORREQUEST_H
#define HW1_MESSAGE_GETSUCCESSORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hw1
{
template <class ContainerAllocator>
struct GetSuccessorRequest_
{
  typedef GetSuccessorRequest_<ContainerAllocator> Type;

  GetSuccessorRequest_()
    : x(0.0)
    , y(0.0)
    , direction()  {
    }
  GetSuccessorRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , direction(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _direction_type;
  _direction_type direction;





  typedef boost::shared_ptr< ::hw1::GetSuccessorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hw1::GetSuccessorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetSuccessorRequest_

typedef ::hw1::GetSuccessorRequest_<std::allocator<void> > GetSuccessorRequest;

typedef boost::shared_ptr< ::hw1::GetSuccessorRequest > GetSuccessorRequestPtr;
typedef boost::shared_ptr< ::hw1::GetSuccessorRequest const> GetSuccessorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hw1::GetSuccessorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hw1::GetSuccessorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hw1::GetSuccessorRequest_<ContainerAllocator1> & lhs, const ::hw1::GetSuccessorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.direction == rhs.direction;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hw1::GetSuccessorRequest_<ContainerAllocator1> & lhs, const ::hw1::GetSuccessorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hw1::GetSuccessorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hw1::GetSuccessorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hw1::GetSuccessorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3601ae784a1cdef6da6662412292fe03";
  }

  static const char* value(const ::hw1::GetSuccessorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3601ae784a1cdef6ULL;
  static const uint64_t static_value2 = 0xda6662412292fe03ULL;
};

template<class ContainerAllocator>
struct DataType< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hw1/GetSuccessorRequest";
  }

  static const char* value(const ::hw1::GetSuccessorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"string direction\n"
;
  }

  static const char* value(const ::hw1::GetSuccessorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.direction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetSuccessorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hw1::GetSuccessorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hw1::GetSuccessorRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "direction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.direction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HW1_MESSAGE_GETSUCCESSORREQUEST_H
