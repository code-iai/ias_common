cmake_minimum_required(VERSION 2.8.3)
project(annotation_srvs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
#  geometry_msgs
#  sensor_msgs
  triangle_mesh_msgs
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  TriangleMeshToName.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  triangle_mesh_msgs
#  geometry_msgs
#  sensor_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs triangle_mesh_msgs
)

