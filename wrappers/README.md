# Wrapper Script for Unpatched Make

This is for running make in a *nix-like environment without the [busybox-w32][1]
patch. You can use it with e.g. [Git for Windows][2] (way more than just git)
and [w64devkit][3].

It's split into two files so that the `PATH` can be used in CLion. You can do
this by adding [`env.make.bat`][4] to your toolchain with the "add environment"
option.

[1]: <https://frippery.org/busybox/>
[2]: <https://github.com/git-for-windows/git>
[3]: <https://github.com/skeeto/w64devkit>
[4]: <env.make.bat>
