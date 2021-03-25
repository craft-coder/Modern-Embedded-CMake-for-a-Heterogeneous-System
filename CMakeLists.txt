cmake_minimum_required(VERSION 3.19)

project(EmboExample LANGUAGES CXX)
include(CMakePrintHelpers)
include(CTest)

set(VARIANT "V1" CACHE STRING "The Variant to build this software project for")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(ignoreWarning "${CMAKE_TOOLCHAIN_FILE}")
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/installed-${VARIANT}" CACHE PATH "..." FORCE)
endif()

cmake_print_variables(VARIANT)

add_custom_target(allSystemA)
add_custom_target(allSystemB)
add_custom_target(allTests)

add_subdirectory(src/common)
add_subdirectory(src/a)
add_subdirectory(src/b)
