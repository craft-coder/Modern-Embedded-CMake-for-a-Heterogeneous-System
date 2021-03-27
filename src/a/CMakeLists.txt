add_library(ARaw INTERFACE a.cpp)
target_compile_definitions(ARaw INTERFACE A)
target_link_libraries(ARaw INTERFACE CommonRaw)

add_executable(EmbeddedA main.cpp)
target_link_libraries(EmbeddedA PRIVATE ARaw)

add_dependencies(allSystemA EmbeddedA)
install(TARGETS EmbeddedA
        COMPONENT allSystemA)

add_subdirectory(tests)