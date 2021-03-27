cmake_minimum_required(VERSION 3.19)

project(EmboExample LANGUAGES CXX)
include(CMakePrintHelpers)
include(CTest)

set(VARIANT "Variant1" CACHE STRING "The Variant to build this software project for")

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/_installed/${VARIANT}" CACHE PATH "..." FORCE)
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(ignoreWarning "${CMAKE_TOOLCHAIN_FILE}")

cmake_print_variables(VARIANT)

# Custom helper targets
add_custom_target(allSystemA)
add_custom_target(allSystemB)
add_custom_target(allTests)

add_subdirectory(src/common)
add_subdirectory(src/a)
add_subdirectory(src/b)
