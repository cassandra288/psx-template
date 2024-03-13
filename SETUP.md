# Setup Instructions
Note this projects build and debugging system has only been designed to run on Windows. Contributions to port the build system to linux are welcome.

## PsyQ & Modern Fixes
PsyQ is Sony's official PSX library and toolset. It was originally designed to run on 16-bit DOS however most important aspects have been fixed to work on Win32. Some of these fixes need to be downloaded seperately.

Psy-Q SDK is setup to expect the library to be installed to `c:/psyq`. The instructions assume you have done this however if you want to install it elsewhere, see `Non-Standard Install` further down.

### Instructions
- Download the Psy-Q SDK (in bold) from the [psxdev downloads page](https://www.psxdev.net/downloads.html).
- Extract the contents of the zip to `C:\`. This should leave you with `C:\psyq`.
- Download the win32 replacement of cpe2x from [Orion's website](http://onorisoft.free.fr/psx/cpe2x.zip).
- Extract and replace the `cpe2x.exe` file in `psyq/bin`.
- Download img2tim from the [img2tim Github repo](https://github.com/Lameguy64/img2tim).
- Extract the files to `psyq/bin`
- Download mkpsxiso from the [mkpsxiso Github repo](https://github.com/Lameguy64/mkpsxiso).
- Extract `mkpsxiso.exe` and `dumpsxiso.exe` to `psyq/bin`

### Non-Standard Install
- Follow the above instructions but installing to wherever you want.
- You'll need to fix the `PSYQ.ini` file in `psyq/bin`. It has a bunch of absolute paths inside of it that you'll need to fix.
- For the build system in this project to work, you'll need to add `psyq/bin` to your system `PATH`.
- You'll also need to add a new system variable `PSYQ_PATH` and set it to `psyq/bin` too.

## PCSX-Redux (OPTIONAL)
PCSX-Redux is an emulator that can be used for both running production PS1 games as well as running and debugging in-progress builds. Some debugging aspects of this project utilise PCSX-Redux being installed into a folder called `pcsx-redux`.

### Instructions
- Download PCSX-Redux from [here](https://github.com/grumpycoders/pcsx-redux/).
- Make a folder at the top of the project called `thirdparty/pcsx-redux`.
- Extract the downloaded zip into there.
- You should have `./thirdparty/pcsx-redux/pcsx-redux.exe`.

## GDB (OPTIONAL)
GDB is a debugger which can be used in-tandem with PCSX-Redux to debug development binaries. Some debugging aspects of this project utilise GDB being installed into a folder called `thirdparty/gdb`.

### Instructions
- Download GDB from [here](https://static.grumpycoder.net/pixel/gdb-multiarch-windows/).
- Make a folder at the top of the project called `thirdparty/gdb`.
- Extract the downloaded zip into there.
- You should have `./thirdparty/gdb/bin`
