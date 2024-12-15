:: Enter a local scope to prevent leaking environment changes.
@setlocal


:: The actual make binary needs to be named something other than "make.exe" if
:: it's adjacent to this script, otherwise it'll take precedence in PATH.
::
:: e.g. MAKE=<winlibs>\bin\mingw32-make.exe
:: e.g. MAKE=<w64devkit>\bin\mingw32-make.exe
::
@set MAKE=%~dp0\gnumake.exe


:: Source toolchain config from another file. They are separate so the
:: environment can also be used in CLion.
@call %~dp0\env.make.bat


:: Pass any arguments through verbatim.
@%MAKE% %*


:: Exit the local scope and restore the old environment.
@endlocal
