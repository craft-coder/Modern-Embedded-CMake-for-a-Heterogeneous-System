
add_executable(TestsB main.cpp)
target_link_libraries(TestsB BRaw)

add_test(NAME TestsB COMMAND TestsB)

add_dependencies(allTests TestsB)
