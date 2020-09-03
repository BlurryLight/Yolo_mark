#! /bin/bash
cd opencv
mkdir -p ../opencv-build
rm -rf ../opencv-build/*
mkdir -p build
rm -rf build/*
cd build
cmake -DBUILD_EXAMPLES=OFF \
      -DBUILD_SHARED_LIBS=OFF \
      -DCMAKE_INSTALL_PREFIX=../../opencv-build \
      -G"MinGW Makefiles" -DBUILD_TESTS=OFF -DBUILD_DOCS=OFF \
      -DWITH_IPP=OFF \
      -DBUILD_PERF_TESTS=OFF \
      -DBUILD_JAVA=OFF \
      -DBUILD_IPP_IW=OFF \
      -DBUILD_ITT=OFF \
      -DBUILD_opencv_calib3d=OFF \
      -DBUILD_opencv_world=ON \
      -DBuild_opencv_ml=OFF \
      -DBuild_opencv_objdetect=OFF \
      -DBuild_opencv_python_bindings_generator=OFF \
      -DBuild_opencv_python_tests=OFF \
      -DBuild_opencv_shape=OFF \
      -DBuild_opencv_stitching=OFF \
      -DBuild_opencv_superres=OFF \
      -DBuild_opencv_ts=OFF \
      -DBuild_opencv_dnn=OFF \
      -DBuild_opencv_features2d=OFF \
      -DBuild_opencv_flann=OFF \
      -DBuild_opencv_java_bindings_generator=OFF \
      -DWITH_EIGEN=OFF \
      -DWITH_GSTREAMER=OFF \
      -DWITH_FFMPEG=OFF \
      -DWITH_PROTOBUF=OFF \
      -DWITH_WEBP=OFF \
      -DWITH_VTK=OFF \
      -DWITH_V4L=OFF \
      -DWITH_TIFF=OFF \
      -DWITH_QUIRC=OFF \
      -DWITH_OPENEXR=OFF \
      -DWITH_OPENCL=OFF \
      -DWITH_OPENCL=OFF \
      ../
mingw32-make -j8
mingw32-make install
cd ../../
