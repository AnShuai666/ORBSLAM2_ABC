#!/usr/bin/env bash

echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[40;32m\$\$\$\$\$\$\$\$解压词典：ORBvoc.txt.tar.gz...\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m\n"

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[40;32m\$\$\$\$\$\$\$\$\$配置并编译Thirdparty/DBoW2库...\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m\n"

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[40;32m\$\$\$\$\$\$\$配置并编译Thirdparty/g2o库...\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m\n"

cd ../../g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../..

echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[40;32m\$\$\$\$\$\$\$配置并编译ORBSLAM2_ABC库...\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m"
echo -e "\033[44;33m\$\$\$\$\$\$\$\$\$\$\$\$$\$\$--发财线--\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\033[0m\n"

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

