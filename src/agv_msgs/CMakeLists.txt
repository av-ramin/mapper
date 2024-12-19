cmake_minimum_required(VERSION 2.8.3)
project(agv_msgs)

set(MSG_DEPENDENCIES
    std_msgs
    geometry_msgs
    sensor_msgs
    nav_msgs
    jsk_recognition_msgs
    shape_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation ${MSG_DEPENDENCIES})

add_message_files(DIRECTORY msg/common_msgs)
add_message_files(DIRECTORY msg/control_msgs)
add_message_files(DIRECTORY msg/localization_msgs)
add_message_files(DIRECTORY msg/navigation_msgs)
add_message_files(DIRECTORY msg/navigation_msgs/followme_msgs)
add_message_files(DIRECTORY msg/perception_msgs)
add_message_files(DIRECTORY msg/sensor_msgs)
add_message_files(DIRECTORY msg/diagnostic_msgs)

generate_messages(DEPENDENCIES ${MSG_DEPENDENCIES})

catkin_package(INCLUDE_DIRS
               include
               CATKIN_DEPENDS
               message_runtime
               ${MSG_DEPENDENCIES})

include_directories(${catkin_INCLUDE_DIRS})

install(DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION})

install(DIRECTORY migration_rules DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
