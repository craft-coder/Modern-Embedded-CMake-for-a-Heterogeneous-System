
add_executable(a_tests main.cpp)
target_link_libraries(a_tests a_raw)
add_test(NAME a_tests COMMAND a_tests)
add_dependencies(allTests a_tests)
