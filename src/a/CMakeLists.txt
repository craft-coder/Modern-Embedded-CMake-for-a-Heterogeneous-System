
add_library(a_raw INTERFACE a.cpp)
target_link_libraries(a_raw INTERFACE common_raw)

# add_library(a STATIC)
# target_link_libraries(a PUBLIC a_raw)

add_executable(a main.cpp)
target_link_libraries(a PRIVATE a_raw)
add_dependencies(allSystemA a)
install(TARGETS a
        COMPONENT allSystemA)

add_subdirectory(tests)