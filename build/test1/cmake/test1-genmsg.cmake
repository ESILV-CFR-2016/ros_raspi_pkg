# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test1: 1 messages, 1 services")

set(MSG_I_FLAGS "-Itest1:/home/viki/catkin_ws/src/test1/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_test1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test1" "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/viki/catkin_ws/src/test1/msg/Num.msg" NAME_WE)
add_custom_target(_test1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test1" "/home/viki/catkin_ws/src/test1/msg/Num.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(test1
  "/home/viki/catkin_ws/src/test1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test1
)

### Generating Services
_generate_srv_cpp(test1
  "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test1
)

### Generating Module File
_generate_module_cpp(test1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test1_generate_messages test1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test1_generate_messages_cpp _test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/msg/Num.msg" NAME_WE)
add_dependencies(test1_generate_messages_cpp _test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test1_gencpp)
add_dependencies(test1_gencpp test1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test1_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(test1
  "/home/viki/catkin_ws/src/test1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test1
)

### Generating Services
_generate_srv_lisp(test1
  "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test1
)

### Generating Module File
_generate_module_lisp(test1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test1_generate_messages test1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test1_generate_messages_lisp _test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/msg/Num.msg" NAME_WE)
add_dependencies(test1_generate_messages_lisp _test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test1_genlisp)
add_dependencies(test1_genlisp test1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test1_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(test1
  "/home/viki/catkin_ws/src/test1/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1
)

### Generating Services
_generate_srv_py(test1
  "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1
)

### Generating Module File
_generate_module_py(test1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test1_generate_messages test1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test1_generate_messages_py _test1_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/viki/catkin_ws/src/test1/msg/Num.msg" NAME_WE)
add_dependencies(test1_generate_messages_py _test1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test1_genpy)
add_dependencies(test1_genpy test1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(test1_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(test1_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(test1_generate_messages_py std_msgs_generate_messages_py)
