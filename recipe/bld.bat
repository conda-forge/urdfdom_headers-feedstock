mkdir build
cd build
cmake ^
    -G "Ninja" ^
    -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -D CMAKE_BUILD_TYPE=Release ^
    %SRC_DIR%
if errorlevel 1 exit 1
ninja install
if errorlevel 1 exit 1
