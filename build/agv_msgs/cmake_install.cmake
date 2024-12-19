# Install script for directory: /home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ramin/Desktop/git/PythonMapping/python_mapping/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/common_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/BagRecorderDump.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/BoolStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/EnumStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/Float32MultiArrayStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/Float64ArrayStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/Float64MultiArrayStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/Float64Stamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/H264Packet.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/ID.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/IDs.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/Int64Stamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/KeyValue.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/OrientationStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/PacketData.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/RecordingStatus.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/ServiceResponseInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/StringArray.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/StringStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/StringWithIDStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/StringWithSchema.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/common_msgs/UInt32Stamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/control_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/DriveMode.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/EncoderData.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/EncoderDataStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/KinematicState.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/LightCapability.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/LightState.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/LightsState.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/MotorData.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/SetLightState.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/control_msgs/TractionData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/localization_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/localization_msgs/NDTCell.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/localization_msgs/NDTMap.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/navigation_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/Behavior.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/BehaviorInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/BezierSplinePointWProperties.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/Mission.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/MissionInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/MissionInstrumentation.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/MissionProfile.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavPath.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavPathInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavPose.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavPoseVariance.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavigationConfig.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/NavigationStatus.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/Obstacle.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/ObstacleInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/ObstacleLayer.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/ObstacleShape.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/PathSegment.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/PathSegmentInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/RallyPoint.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/SplineDriveParam.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/SplinePath.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/SplinePathArray.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/TrajectoryControllerState.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/Waypoint.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/WaypointArray.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/WaypointStatus.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/WaypointWithVariance.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/Zone.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/ZoneInfo.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/ZoneShape.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/navigation_msgs/followme_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/followme_msgs/FollowmeStatus.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/navigation_msgs/followme_msgs/FollowmeTagStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/perception_msgs" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/Detection2D.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/Detection2DArrayStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/HumanPose.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/HumanPoseArray.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/HumanPoseControlStamped.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/LidarTrackingArray.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/PlaneCoefs.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/RfAnchorMsg.msg"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/perception_msgs/RfTagInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/sensor_msgs" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/sensor_msgs/Barometer.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg/diagnostic_msgs" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/msg/diagnostic_msgs/ProximitySafetyStatus.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/include/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/share/roseus/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/share/common-lisp/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/share/gennodejs/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/lib/python3/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/devel/lib/python3/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/build/agv_msgs/catkin_generated/installspace/agv_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig.cmake"
    "/home/ramin/Desktop/git/PythonMapping/python_mapping/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs" TYPE FILE FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/agv_msgs" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/include/agv_msgs/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs" TYPE DIRECTORY FILES "/home/ramin/Desktop/git/PythonMapping/python_mapping/src/agv_msgs/migration_rules")
endif()

