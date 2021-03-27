add_library(CommonRaw INTERFACE)
target_sources(CommonRaw INTERFACE print.cpp)
target_compile_definitions(CommonRaw INTERFACE VARIANT=${VARIANT})
target_include_directories(CommonRaw INTERFACE ${CMAKE_CURRENT_LIST_DIR})

add_subdirectory(tests)