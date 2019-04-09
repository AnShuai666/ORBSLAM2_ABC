cmake_minimum_required(VERSION 2.8)
project(ORBSLAM2_ABC)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif ()

message("编译类型为：" ${CMAKE_BUILD_TYPE})

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wall -03 -march=native")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -03 -march=native")

#检查c11 或者c++0x支持
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if (COMPILER_SUPPORTS_CXX11)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
    add_definitions(-DCOMPILEDWITHC11)
    message(STATUS "使用flag -std=c++11.")
elseif(COMPILER_SUPPORTS_CXX0X)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
    add_definitions(-DCOMPILERDWITHC0X)
    message(STATUS "使用flag -std=c++0x.")
else()
    message(FATAL_ERROR "编译器${CMAKE_CXX_FLAGS}没有C++11支持。请用不同的c++编译器。")
endif ()

