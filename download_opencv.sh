#!/bin/bash 

wget -c -O opencv3.zip https://github.com/opencv/opencv/archive/3.4.11.zip
unzip opencv3.zip -d ./opencv
mv ./opencv/opencv-3.4.11/* ./opencv
rm -r ./opencv/opencv-3.4.11

