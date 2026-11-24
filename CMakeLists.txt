cmake_minimum_required(VERSION 3.25)
project(flight VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Flight code never throws and never asks for type information at run time.
add_compile_options(-fno-exceptions -fno-rtti)

# Every warning is on, and every warning is an error. This is Power of Ten rule 10.
set(FLIGHT_WARNINGS
    -Wall
    -Wextra
    -Wpedantic
    -Wshadow
    -Wconversion
    -Wsign-conversion
    -Werror)

include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/releases/download/v1.18.0/googletest-1.18.0.tar.gz
    URL_HASH SHA256=6e3191c1455468b3fc35a417fb565c1c5071aee1b7e7f85e30cf48a98d37d8b5
    SYSTEM)
set(INSTALL_GTEST OFF)
FetchContent_MakeAvailable(googletest)

enable_testing()
add_executable(flight_tests
    tests/smoke_test.cpp)
target_link_libraries(flight_tests PRIVATE GTest::gtest_main)
target_compile_options(flight_tests PRIVATE ${FLIGHT_WARNINGS})

include(GoogleTest)
gtest_discover_tests(flight_tests)
