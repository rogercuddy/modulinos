cmake_minimum_required(VERSION 3.4)

project(modulinos)
set(EXECUTABLE_OUTPUT_PATH "bin")
set(CMAKE_C_FLAGS "-O2 -Wall -Wextra -pedantic -std=c99")
if (CMAKE_C_COMPILER_ID MATCHES "Clang")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wmost -Weverything")
endif()
add_executable(modulino lib/modulino.c)
target_compile_definitions(modulino PRIVATE MODULINO MODULINO)
add_executable(modulino-use-test lib/test.c lib/modulino.c)

enable_testing()
add_test(NAME modulino COMMAND modulino)
add_test(NAME modulino-use-test COMMAND modulino-use-test)

add_custom_target(cppcheck COMMAND cppcheck -q --enable=all --suppressions-list=$ENV{HOME}/suppressions.cfg lib)
add_custom_target(splint COMMAND find lib -type f -name '*.[ch]' -exec splint {} "\;")
add_custom_target(vera++ COMMAND find lib -type f -name '*.cpp' -o -name '*.[ch]' -exec vera++ -s {} "\;")
add_custom_target(lint DEPENDS cppcheck splint vera++)

add_custom_target(valgrind-modulino COMMAND valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes $<TARGET_FILE:modulino>)
add_custom_target(valgrind-test COMMAND valgrind --tool=memcheck --leak-check=yes --show-reachable=yes --track-fds=yes --dsymutil=yes $<TARGET_FILE:modulino-use-test>)
add_custom_target(valgrind DEPENDS valgrind-modulino valgrind-test)
