# JSON Test Data

A dataset of JSON files suitable for tests or benchmarks of JSON libraries

## Usage

The most straightforward way to use this dataset is to clone the repository and use the files directly in your tests or benchmarks.

### C and C++ with CMake

For C and C++ projects using CMake, you can add the repo with `FetchContent`, or [CPM.cmake](https://github.com/cpm-cmake/CPM.cmake), or just add a repo clone with `add_subdirectory`.

As a result a target `test-data::json` will be available, which provides the generated include file `json-test-data.h`.
