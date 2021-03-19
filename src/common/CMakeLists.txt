
add_library(common_raw INTERFACE print.cpp)
set_target_properties(common_raw PROPERTIES CXX_STANDARD 20
                                            CXX_STANDARD_REQUIRED TRUE
                                            CXX_EXTENSIONS FALSE)

# add_library(common STATIC print.cpp)
# target_link_libraries(common PUBLIC common_raw)

add_subdirectory(tests)