@echo off
color 0a
if exist armeabi-v7a rd /s /q armeabi-v7a
md armeabi-v7a
cmake -S ../dcmtk -B ./armeabi-v7a -GNinja "-DCMAKE_BUILD_TYPE:STRING=Release" "-DANDROID_NATIVE_API_LEVEL:STRING=24" "-DANDROID_NDK:PATH=D:/Android/Sdk/ndk/21.4.7075529" "-DCMAKE_TOOLCHAIN_FILE:PATH=D:/Android/Sdk/ndk/21.4.7075529/build/cmake/android.toolchain.cmake" "-DANDROID_ABI:STRING=armeabi-v7a" "-DANDROID_STL:STRING=c++_static" "-DANDROID_SDK_ROOT:PATH=D:/android-sdk-windows" "-DANDROID_EMULATOR_AVD=Nexus_6_API_25_arm" "-DDCMTK_WITH_ICONV:BOOL=OFF" "-DCMAKE_CXX_STANDARD=17" "-DDCMTK_ENABLE_STL:BOOL=ON" "-DANDROID_TEMPORARY_FILES_LOCATION:PATH=/data/local/tmp" "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" "-DCMAKE_INSTALL_PREFIX:PATH=./install/android/armeabi-v7a"
cmake --build ./armeabi-v7a --target all
cmake --install ./armeabi-v7a --strip
pause