FROM debian:bullseye


ARG OPENCV_VERSION=4.10.0

RUN apt update && apt install -y unzip cmake wget g++

RUN mkdir /tmp/opencv
WORKDIR /tmp/opencv
RUN wget -O opencv.zip https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip
RUN wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip

RUN unzip opencv.zip
RUN unzip opencv_contrib.zip

RUN mkdir opencv-${OPENCV_VERSION}/build
WORKDIR /tmp/opencv/opencv-${OPENCV_VERSION}

RUN cmake \
    -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv/opencv_contrib-${OPENCV_VERSION}/modules \
    -D WITH_FFMPEG=NO \
    -D INSTALL_C_EXAMPLES=NO \
    -D INSTALL_PYTHON_EXAMPLES=NO \
    -D BUILD_ANDROID_EXAMPLES=NO \
    -D BUILD_DOCS=NO \
    -D BUILD_TESTS=NO \
    -D BUILD_PERF_TESTS=NO \
    -D BUILD_EXAMPLES=NO \
    -D BUILD_opencv_java=NO \
    -D BUILD_opencv_python=NO \
    -D BUILD_opencv_python2=NO \
    -D BUILD_opencv_python3=NO \
    -D OPENCV_GENERATE_PKGCONFIG=YES . -B build/

WORKDIR /tmp/opencv/opencv-${OPENCV_VERSION}/build
RUN make -j8 && make install
RUN cd && rm -rf /tmp/opencv

RUN ldconfig /usr/local/lib
ENV LD_LIBRARY_PATH /usr/local/lib