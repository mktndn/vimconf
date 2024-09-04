# Personal vim config files

<!-- ABOUT THE PROJECT -->
## About The Project

Personal preference of vim configuration.
Windows/Linux compatible.

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

- vim executable compiled with `+python3`

### Installation

1. copy these files into your home directory.

  - `.vimrc`
  - `.gvimrc`
  - `.vim/`

2. start vim/gvim.

### notes for building vim in MSYS2 with python support.

You need to add these three lines in `Make_ming.mak` file.


``` Makefile
PYTHON3=c:/python310
PYTHON3_VER=310
PYTHON3_NAME=python
```

Then `make -f Make_ming.mak` in `src` directory.

### Script to prepare install vim in Windows

Now this repo includes a script for installing vim in Windows.
First, build vim in MSYS2 MINGW64 environment.

change `VER` to your built vim version and run in `vim` directory.

After completion, copy `vim91` (or your version) directory under `c:\program files\vim`, then run `install.exe` as administrator.
