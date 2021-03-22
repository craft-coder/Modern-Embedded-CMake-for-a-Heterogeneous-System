
add_executable(b_tests main.cpp)
target_link_libraries(b_tests b_raw)
add_test(NAME b_tests COMMAND b_tests)
add_dependencies(allTests b_tests)
