cmake_minimum_required(VERSION 2.8.3)
project(cogman_msgs)

find_package(catkin REQUIRED COMPONENTS
  actionlib_msgs
  geometry_msgs
  actionlib
  vision_msgs
  message_generation
)

## Generate actions in the 'action' folder
add_action_files(
  FILES
  ArmHand.action
  Ptu.action
  Strings.action
)

generate_messages(
  DEPENDENCIES
  actionlib_msgs
  geometry_msgs
  vision_msgs
)

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

catkin_package(
  CATKIN_DEPENDS message_runtime actionlib_msgs geometry_msgs vision_msgs
)

