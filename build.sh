#!/usr/bin/env bash

echo "********************************************"
echo "***********解压词典：ORBvoc.txt.tar.gz*******"
echo "********************************************"

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "********************************************"
echo "*********配置并编译Thirdparty/DBoW2库...*****"
echo "********************************************"

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo "********************************************"
echo "*******配置并编译Thirdparty/g2o库...*********"
echo "********************************************"

cd ../../g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../..

echo "********************************************"
echo "*******配置并编译ORBSLAM2_ABC库...***********"
echo "********************************************"

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

