:: cmd

:: Isolate the build.
mkdir Build
cd Build
if errorlevel 1 exit 1

:: Generate the build files.
cmake .. -G"Ninja" %CMAKE_ARGS%

:: Build and install.
ninja install
if errorlevel 1 exit 1
