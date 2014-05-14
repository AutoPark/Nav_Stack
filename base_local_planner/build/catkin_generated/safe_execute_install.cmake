execute_process(COMMAND "/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/build/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/naman/catkin_ws/src/navigation-groovy-devel-catkinized/base_local_planner/build/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
