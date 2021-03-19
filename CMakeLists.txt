cmake_minimum_required(VERSION 3.19)

project(EmboExample LANGUAGES CXX)

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_LIST_DIR}/installed" CACHE PATH "..." FORCE)
endif()

add_custom_target(allSystemA)
add_custom_target(allSystemB)
add_custom_target(allTests)

add_subdirectory(src/common)
add_subdirectory(src/a)
add_subdirectory(src/b)
