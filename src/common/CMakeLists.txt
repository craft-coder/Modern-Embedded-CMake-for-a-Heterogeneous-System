
add_library(CommonRaw INTERFACE print.cpp)
set_target_properties(CommonRaw PROPERTIES CXX_STANDARD 17
                                            CXX_STANDARD_REQUIRED TRUE
                                            CXX_EXTENSIONS FALSE)

add_subdirectory(tests)