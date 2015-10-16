# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rostestm: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irostestm:/home/viki/catkin_ws/src/rostestm/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rostestm_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg" NAME_WE)
add_custom_target(_rostestm_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rostestm" "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rostestm
  "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostestm
)

### Generating Services

### Generating Module File
_generate_module_cpp(rostestm
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostestm
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rostestm_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rostestm_generate_messages rostestm_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg" NAME_WE)
add_dependencies(rostestm_generate_messages_cpp _rostestm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostestm_gencpp)
add_dependencies(rostestm_gencpp rostestm_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostestm_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rostestm
  "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostestm
)

### Generating Services

### Generating Module File
_generate_module_lisp(rostestm
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostestm
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rostestm_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rostestm_generate_messages rostestm_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg" NAME_WE)
add_dependencies(rostestm_generate_messages_lisp _rostestm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostestm_genlisp)
add_dependencies(rostestm_genlisp rostestm_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostestm_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rostestm
  "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostestm
)

### Generating Services

### Generating Module File
_generate_module_py(rostestm
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostestm
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rostestm_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rostestm_generate_messages rostestm_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/rostestm/msg/envoi.msg" NAME_WE)
add_dependencies(rostestm_generate_messages_py _rostestm_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rostestm_genpy)
add_dependencies(rostestm_genpy rostestm_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rostestm_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostestm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rostestm
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(rostestm_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostestm)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rostestm
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(rostestm_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostestm)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostestm\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rostestm
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(rostestm_generate_messages_py std_msgs_generate_messages_py)
