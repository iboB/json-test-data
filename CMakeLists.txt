# SPDX-License-Identifier: Unlicense
cmake_minimum_required(VERSION 3.24)
project(json-test-data
    DESCRIPTION "Dataset of JSON files suitable for tests and benchmarks"
)

configure_file(json-test-data.in.h json-test-data.h @ONLY)

add_library(json-test-data INTERFACE)
target_include_directories(json-test-data INTERFACE ${CMAKE_CURRENT_BINARY_DIR})
add_library(test-data::json ALIAS json-test-data)

if(PROJECT_IS_TOP_LEVEL)
    add_subdirectory(test/c-cpp)
endif()
