# Template Project

## Attributions
- Structure is derived from nolibgs_hello_worlds, which you can find [here](https://github.com/ABelliqueux/nolibgs_hello_worlds/)
- PsyQ, which you can find a converted library [here](http://psx.arthus.net/sdk/Psy-Q/psyq-4.7-converted-full.7z).
- mkpsxiso, which you can find [here](https://github.com/Lameguy64/mkpsxiso)
- PCSX-Redux's "Nugget", which you can find [here](https://github.com/pcsx-redux/nugget.git)

## Installation
### Windows
#### MIPS, Nugget & PsyQ
You can setup a pre-built MIPS toolchain by copy-pasting the following into a command prompt:
```
powershell -c "& { iwr https://raw.githubusercontent.com/grumpycoders/pcsx-redux/main/mips.ps1 | iex }"
```
Then, open a new command prompt, and type the following:
```
mips
```
This will open a window to install, just click `Install`.
The project has been tested with the following MIPS versions: `13.2.0`, `11.2.0`.

To download Nugget and PsyQ:
1. Pull the git submodules with `git submodule update --init --recursive`
2. Download the PsyQ converted libraries here : [http://psx.arthus.net/sdk/Psy-Q/psyq-4.7-converted-full.7z](http://psx.arthus.net/sdk/Psy-Q/psyq-4.7-converted-full.7z)
3. Extract the content of `psyq-4.7-converted-full.7z` into `./psyq`. You should now have `./psyq/include`.

#### Mkpsxiso
Mkpsxiso is used to create bootable disk images from psx binaries. You can download it [here](https://github.com/Lameguy64/mkpsxiso/releases/latest). Inside of the zip should be `mkpsxiso.exe`, put this exe into `thirdparty`.

#### PCSX-Redux
Download PCSX-Redux, you can find a link [here](https://github.com/grumpycoders/pcsx-redux/). Feel free to use another emulator if you're familiar with it.

#### GDB Debugger
GDB is optional but will enable you to debug the project if you're intending to modify or learn.

Download gdb from [here](https://static.grumpycoder.net/pixel/gdb-multiarch-windows/) and extract the zip file into `./gdb`. You should now have `./gdb/bin`.

To use GDB, you'll need to launch pcsx-redux and go to `Configuration > Emulation`. Then you'll need to tick `Enable Debugger` and `Enable GDB server`. You'll also need to untick `Dynarec CPU`. Note disabling dynarec and enabling debugging will cause a reduction in performance.

If you'd like to use GDB from within VS Code, you can download the `Native Debug` extension. The repo already has a `.vscode/launch.json` setup, just run the `(gdb) Launch Main` debugger configuration.

## Compilation
Compilation is as simple as running `make`.

## Running
You can run `make run` to automatically load pcsx-redux (assuming you have pcsx-redux in the `pcsx-redux` directory). For running in another emulator, load the file `out/example.bin` as a disc image.
- TODO: Instructions on burning a physical disc for the PS1

## Debugging
1. Start pcsx-redux.
2. Start the debugger (f5).
