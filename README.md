# Cocos2d-Reflaxe/C++
Make Cocos2d-x game with Haxe. Using Reflaxe/C++ to transpile Haxe to C++17 (No GC).

## Build
- Install Haxe
- Install [Reflaxe/C++ nightly](https://github.com/RobertBorghese/reflaxe.CPP#installation) with haxelib
- Terminal command: `haxe build.hxml`
- Open proj.win32/HaxeCocosCpp.sln, add .h/.cpp files from output folder
- Add output/include to includedirs list
- Build/run with Visual Studio
- (Optional) do the same with Android Studio/XCode