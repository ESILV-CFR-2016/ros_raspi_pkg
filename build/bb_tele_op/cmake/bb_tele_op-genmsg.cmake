# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bb_tele_op: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ibb_tele_op:/home/viki/catkin_ws/src/bb_tele_op/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bb_tele_op_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg" NAME_WE)
add_custom_target(_bb_tele_op_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bb_tele_op" "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bb_tele_op
  "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bb_tele_op
)

### Generating Services

### Generating Module File
_generate_module_cpp(bb_tele_op
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bb_tele_op
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bb_tele_op_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bb_tele_op_generate_messages bb_tele_op_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg" NAME_WE)
add_dependencies(bb_tele_op_generate_messages_cpp _bb_tele_op_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bb_tele_op_gencpp)
add_dependencies(bb_tele_op_gencpp bb_tele_op_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bb_tele_op_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bb_tele_op
  "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bb_tele_op
)

### Generating Services

### Generating Module File
_generate_module_lisp(bb_tele_op
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bb_tele_op
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bb_tele_op_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bb_tele_op_generate_messages bb_tele_op_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg" NAME_WE)
add_dependencies(bb_tele_op_generate_messages_lisp _bb_tele_op_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bb_tele_op_genlisp)
add_dependencies(bb_tele_op_genlisp bb_tele_op_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bb_tele_op_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bb_tele_op
  "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bb_tele_op
)

### Generating Services

### Generating Module File
_generate_module_py(bb_tele_op
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bb_tele_op
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bb_tele_op_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bb_tele_op_generate_messages bb_tele_op_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/bb_tele_op/msg/keys.msg" NAME_WE)
add_dependencies(bb_tele_op_generate_messages_py _bb_tele_op_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bb_tele_op_genpy)
add_dependencies(bb_tele_op_genpy bb_tele_op_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bb_tele_op_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bb_tele_op)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bb_tele_op
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(bb_tele_op_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bb_tele_op)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bb_tele_op
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(bb_tele_op_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bb_tele_op)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bb_tele_op\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bb_tele_op
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(bb_tele_op_generate_messages_py std_msgs_generate_messages_py)
