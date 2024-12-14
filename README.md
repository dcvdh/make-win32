# GNU Make for Windows

Binaries for [GNU Make][1] built using GitHub actions. There are two versions:

- [make.exe][2]: which is patched to run commands from [busybox-w32][3] if
  they're not found in `PATH`.
- [gnumake.exe][2]: the unpatched original.

You can grab them from the above links or the [latest release][2].

## Do It Yourself

1. Get a MinGW toolchain like [w64devkit][4]. You can also use Visual Studio
   apparently.
2. Get the latest tarball from a [gnu.org mirror][5], clone the [original
   repo][6], or clone this one (and make sure to `git submodule init` and
   `git submodule update`).
3. **[unnecessary if you're working from the tarball]** Run `bootstrap.bat` which
   requires [sed][7] and [curl][8].
4. **[optional]** Apply the busybox patch with `patch -p1 -i busybox-w32.patch`.
5. Run `build_w32.bat gcc` which will produce `GccRel/gnumake.exe`
6. **[optional]** Strip debugging symbols and rename it with
  `strip --strip-unneeded -o make.exe GccRel/gnumake.exe`

[1]: <https://www.gnu.org/software/make/>
[2]: <https://github.com/dcvdh/make-win32/releases/latest>
[3]: <https://frippery.org/busybox/>
[4]: <https://github.com/skeeto/w64devkit>
[5]: <https://ftpmirror.gnu.org/gnu/make>
[6]: <https://git.savannah.gnu.org/cgit/make.git>
[7]: <https://www.gnu.org/software/sed>
[8]: <https://curl.se/>
