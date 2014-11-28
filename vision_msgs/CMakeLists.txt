cmake_minimum_required(VERSION 2.8.3)
project(vision_msgs)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  geometry_msgs
  message_generation
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  algorithm_evaluation.msg
  aposteriori_position.msg
  apriori_position.msg
  cop_answer.msg
  cop_camera_mode.msg
  cop_descriptor.msg
  cop_feedback.msg
  cop_status.msg
  object_algorithm_relation.msg
  partial_lo.msg
  pp_status.msg
  system_error.msg
  Shape.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime geometry_msgs roscpp
)

