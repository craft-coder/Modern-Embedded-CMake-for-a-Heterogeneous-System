
add_library(ARaw INTERFACE a.cpp)
target_link_libraries(ARaw INTERFACE CommonRaw)

# add_library(EmbeddedA STATIC)
# target_link_libraries(EmbeddedA PUBLIC ARaw)

add_executable(EmbeddedA main.cpp)
target_link_libraries(EmbeddedA PRIVATE ARaw)
add_dependencies(allSystemA EmbeddedA)
install(TARGETS EmbeddedA
        COMPONENT allSystemA)

add_subdirectory(tests)