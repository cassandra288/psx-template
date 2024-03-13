# Setup Instructions
Note this projects build and debugging system has only been designed to run on Windows. Contributions to port the build system to linux are welcome.

## PsyQ & Modern Fixes
PsyQ is Sony's official PSX library and toolset. It was originally designed to run on 16-bit DOS however most important aspects have been fixed to work on Win32. Some of these fixes need to be downloaded seperately.

### Instructions
- Download the Programmers Tool CD 2.2 from the [psxdev downloads page](https://www.psxdev.net/downloads.html).
- Extract the ISO from the RAR archive.
- Open the ISO with WinRAR or 7Zip.
- Make a folder `thirdparty/psyq`
- Extact the following folders into the psyq folder:
  - DOC
  - GNU
  - PSSN
  - PSX
  - PSXGRAPH
  - PSXSOUND
- Download the win32 replacement of cpe2x from [Orion's website](http://onorisoft.free.fr/psx/cpe2x.zip).
- Extract and replace the `cpe2x.exe` file in `thirdparty/psyq/PSX/BIN`.
- Download img2tim from the [img2tim Github repo](https://github.com/Lameguy64/img2tim).
- Extract the files to `thirdparty/psyq/PSXGRAPH/BIN`
- Download mkpsxiso from the [mkpsxiso Github repo](https://github.com/Lameguy64/mkpsxiso).
- Extract `mkpsxiso.exe` and `dumpsxiso.exe` to `thirdparty/psyq/PSSN/BIN`

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
