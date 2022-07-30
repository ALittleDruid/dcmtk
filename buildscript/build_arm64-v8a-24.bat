@echo off
color 0a
if exist arm64-v8a rd /s /q arm64-v8a
md arm64-v8a
cmake -S ../dcmtk -B ./arm64-v8a -GNinja "-DCMAKE_BUILD_TYPE:STRING=Release" "-DANDROID_NATIVE_API_LEVEL:STRING=24" "-DANDROID_NDK:PATH=D:/Android/Sdk/ndk/21.4.7075529" "-DCMAKE_TOOLCHAIN_FILE:PATH=D:/Android/Sdk/ndk/21.4.7075529/build/cmake/android.toolchain.cmake" "-DANDROID_ABI:STRING=arm64-v8a" "-DANDROID_STL:STRING=c++_static" "-DANDROID_SDK_ROOT:PATH=D:/android-sdk-windows" "-DANDROID_EMULATOR_AVD=Nexus_6_API_25_arm64" "-DDCMTK_WITH_ICONV:BOOL=OFF" "-DCMAKE_CXX_STANDARD=17" "-DDCMTK_ENABLE_STL:BOOL=ON" "-DANDROID_TEMPORARY_FILES_LOCATION:PATH=/data/local/tmp" "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" "-DCMAKE_INSTALL_PREFIX:PATH=./install/android/arm64-v8a"
cmake --build ./arm64-v8a --target all
cmake --install ./arm64-v8a --strip
pause