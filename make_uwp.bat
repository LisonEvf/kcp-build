mkdir build_uwp & pushd build_uwp
cmake -G "Visual Studio 14 2015" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp --config Release
md Plugins\WSA\x86
copy /Y build_uwp\Release\kcp.dll Plugins\WSA\x86\kcp.dll
rmdir /S /Q build_uwp

mkdir build_uwp64 & pushd build_uwp64
cmake -G "Visual Studio 14 2015 Win64" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp64 --config Release
md Plugins\WSA\x64
copy /Y build_uwp64\Release\kcp.dll Plugins\WSA\x64\kcp.dll
rmdir /S /Q build_uwp64

mkdir build_uwp_arm & pushd build_uwp_arm
cmake -G "Visual Studio 14 2015 ARM" -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=10.0 ..
popd
cmake --build build_uwp_arm --config Release
md Plugins\WSA\ARM
copy /Y build_uwp_arm\Release\kcp.dll Plugins\WSA\ARM\kcp.dll
rmdir /S /Q build_uwp_arm

pause
