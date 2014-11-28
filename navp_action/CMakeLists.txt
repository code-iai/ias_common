cmake_minimum_required(VERSION 2.8.3)
project(navp_action)

find_package(catkin REQUIRED COMPONENTS
  actionlib_msgs
  message_generation
)

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

## Generate services in the 'action' folder
add_action_files(
  FILES
  nav_action.action
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime actionlib_msgs
)

