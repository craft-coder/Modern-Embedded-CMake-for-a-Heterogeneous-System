
add_executable(TestsA main.cpp)
target_link_libraries(TestsA ARaw)

add_test(NAME TestsA COMMAND TestsA)

add_dependencies(allTests TestsA)
