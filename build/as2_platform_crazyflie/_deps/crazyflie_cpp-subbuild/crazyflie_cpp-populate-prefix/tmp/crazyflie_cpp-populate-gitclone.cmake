
if(NOT "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitinfo.txt" IS_NEWER_THAN "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/miferco97/crazyflie_cpp.git" "crazyflie_cpp-src"
    WORKING_DIRECTORY "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/miferco97/crazyflie_cpp.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout master --
  WORKING_DIRECTORY "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitinfo.txt"
    "/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/thinkpad/aerostack2ws/build/as2_platform_crazyflie/_deps/crazyflie_cpp-subbuild/crazyflie_cpp-populate-prefix/src/crazyflie_cpp-populate-stamp/crazyflie_cpp-populate-gitclone-lastrun.txt'")
endif()
