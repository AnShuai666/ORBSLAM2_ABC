#!/usr/bin/env bash

echo "解压词典：ORBvoc.txt.tar.gz"

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "配置并编译Thirdparty/DBoW2库..."
cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j


echo "配置并编译Thirdparty/g2o库..."

cd ../../g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../..

echo "配置并编译ORBSLAM2_ABC库..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

