cmake_minimum_required(VERSION 2.8.3)
project(vision_srvs)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  vision_msgs
  moveit_msgs
  message_generation
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  clip_polygon.srv
  cop_add_collision.srv
  cop_call.srv
  cop_get_methods_list.srv
  cop_get_object_shape.srv
  cop_save.srv
  register_jlo_callback.srv
  srvjlo.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  geometry_msgs
  vision_msgs
  moveit_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime geometry_msgs vision_msgs moveit_msgs
)

