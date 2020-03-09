chcp 65001
REM 生成一个开发用的VS工程目录
REM python -V
REM python ./tools/DownloadLib.py -d "C:/dxlib/download" -l "C:/dxlib/lib" "concurrentqueue"

mkdir build
cd build
conan install .. -s compiler.runtime=MD -s arch=x86_64 -s build_type=Release --build missing -o build_test=True
cmake ../src -G "Visual Studio 15 Win64" -DCALIB_BUILD_SHARED:BOOL="0" -DCALIB_BUILD_TESTS:BOOL="1" -DCMAKE_CONFIGURATION_TYPES:STRING="Debug;Release;RelWithDebInfo"