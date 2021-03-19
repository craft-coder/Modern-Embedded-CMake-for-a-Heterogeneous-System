
add_library(b_raw INTERFACE b.cpp)
target_link_libraries(b_raw INTERFACE common_raw)

add_executable(b main.cpp)
target_link_libraries(b PRIVATE b_raw)
add_dependencies(allSystemB b)
install(TARGETS b)

add_subdirectory(tests)