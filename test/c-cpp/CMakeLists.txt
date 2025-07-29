add_executable(test-c-cpp test.c)
target_link_libraries(test-c-cpp test-data::json)
