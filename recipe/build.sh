#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DAPPEND_PROJECT_NAME_TO_INCLUDEDIR:BOOL=OFF \
      -DCMAKE_INSTALL_LIBDIR=lib
make
make install
