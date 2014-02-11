git pull
cmake build
cd build
call "D:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
start /wait devenv.exe mangos-zero.sln /Build Release
copy /Y D:\works\MangosZero\server\build\bin\Release\realmd.exe "D:\games\wowserver\WOW(Vanilla)\server"
copy /Y D:\works\MangosZero\server\build\Release\Release\mangosd.exe "D:\games\wowserver\WOW(Vanilla)\server"