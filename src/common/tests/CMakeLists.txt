
add_executable(common_tests main.cpp)
target_link_libraries(common_tests common_raw)
add_test(NAME common_tests COMMAND common_tests)
add_dependencies(allTests common_tests)
