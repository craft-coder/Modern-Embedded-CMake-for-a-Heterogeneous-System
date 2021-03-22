cmake_minimum_required(VERSION 3.19)

project(EmboExample LANGUAGES CXX)
include(CTest)

set(VARIANT "V1" CACHE STRING "The Variant to build this software project for")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_custom_target(allSystemA)
add_custom_target(allSystemB)
add_custom_target(allTests)

add_subdirectory(src/common)
add_subdirectory(src/a)
add_subdirectory(src/b)
