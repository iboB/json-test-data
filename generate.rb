#!/usr/bin/env ruby
# SPDX-License-Identifier: Unlicense
DATA_DIR = 'data'
files = Dir["#{DATA_DIR}/**/*"].map { _1[(DATA_DIR.size+1)..] }

class String
  def sym = gsub(/\/|-|\./, '_')
end

# CMake C and C++
CMAKE_DIR = "@CMAKE_CURRENT_SOURCE_DIR@/#{DATA_DIR}"
c_cpp_code=%{
// Generated file. Do not edit!
#pragma once
#define JSON_TEST_DATA_DIR #{CMAKE_DIR.inspect}
}

h_path = -> { "JSON_TEST_DATA_DIR\"/#{_1}\"" }

c_cpp_code += "\n#define JSON_TEST_DATA_JSON_FILES #{files.select { _1.end_with? '.json' }.map { h_path[_1] }.join(?,) }\n\n"

c_cpp_code += files.map {
  "#define JSON_TEST_DATA_FILE_#{_1.sym} #{ h_path[_1] }\n"
}.join

# puts c_cpp_code
File.write("json-test-data.in.h", c_cpp_code)
