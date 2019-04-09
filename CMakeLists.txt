cmake_minimum_required(VERSION 2.8)
project(ORBSLAM2_ABC)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif ()

message("编译类型为：" ${CMAKE_BUILD_TYPE})

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wall -03 -march=native")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -03 -march=native")

