# Mathomatic

This repository preserves the **Mathomatic** Computer Algebra System. It has been
updated here with modern build instructions so it can be compiled on current
systems.

## Building with CMake

Requirements:
- C compiler such as `gcc` or `clang`
- `cmake` (version 3.5 or newer)
- `make`
- Optional: `libreadline-dev` for command line history support

### Steps
1. Clone this repository and open a terminal in the source directory.
2. Create a build directory and configure the project:
   ```bash
   mkdir build && cd build
   cmake .. -DCMAKE_BUILD_TYPE=Release
   ```
3. Build the program:
   ```bash
   make -j4
   ```
   If you prefer to build using a C++ compiler such as `g++`, run:
   ```bash
   make CC=g++ CC_LINK=g++ CFLAGS="-x c" -j4 mathomatic
   ```
4. (Optional) Run the test suite:
   ```bash
   cd ..
   ./t
   ```
   You should see `All tests passed 100% correctly.` if everything works.

## Development Checklist
Use this list to track progress when working on new features:
- [ ] Fork and clone the repository
- [ ] Configure and build with CMake
- [ ] Run the test suite successfully
- [ ] Implement and test your changes
- [ ] Submit a pull request
