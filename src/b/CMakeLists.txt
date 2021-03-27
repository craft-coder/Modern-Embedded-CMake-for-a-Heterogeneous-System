add_library(BRaw INTERFACE b.cpp)
target_compile_definitions(BRaw INTERFACE B)
target_link_libraries(BRaw INTERFACE CommonRaw)

add_executable(EmbeddedB main.cpp)
target_link_libraries(EmbeddedB PRIVATE BRaw)

add_dependencies(allSystemB EmbeddedB)
install(TARGETS EmbeddedB
        COMPONENT allSystemB)

add_subdirectory(tests)