
add_executable(TestsCommon main.cpp)
target_link_libraries(TestsCommon CommonRaw)
add_test(NAME TestsCommon COMMAND TestsCommon)
add_dependencies(allTests TestsCommon)
