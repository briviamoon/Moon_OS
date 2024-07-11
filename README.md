# moon_os

This is a custom operating system project.

## Build Instructions

1. Install the cross-compiler toolchain.
2. Run `make` to build the OS.
3. Use `make qemu` to run the OS in QEMU.

## Project Structure

- **build/**: Compiled binary files and intermediate objects.
- **docs/**: Documentation for the project.
- **drivers/**: Drivers for various hardware components.
- **include/**: Header files for kernel, libraries, and modules.
- **kernel/**: Core kernel code, organized by architecture and subsystems.
- **libs/**: Libraries for the OS.
- **modules/**: Loadable kernel modules.
- **scripts/**: Helper scripts for building, testing, and other tasks.
- **tools/**: Tools for building, debugging, and testing the OS.
- **userland/**: User-space applications and libraries.
- **boot/**: Bootloader and related files.
- **config/**: Configuration files for the build system and OS.