:: The local MinGW toolchain.
::
:: e.g. MINGW=<winlibs>\bin
:: e.g. MINGW=<w64devkit>\bin
:: e.g. MINGW=<strawberry-perl>\c\bin
:: e.g. MINGW=<clion>\bin\mingw\bin
::
@set MINGW=%~dp0\clion\bin\mingw\bin


:: Where to find local *nix tools like sh and rm if you're not using the
:: busybox-w32 patch.
::
:: e.g. UTILS=<git-for-windows>\usr\bin
::
@set UTILS=%~dp0\git\usr\bin


:: Some toolchains don't have cc or c++ binaries.
::
:: e.g. CC=clang
::
@set CC=gcc
@set CXX=g++


:: Adjust PATH to prioritise the *nix-like environment.
@set PATH=%MINGW%;%UTILS%;%PATH%
