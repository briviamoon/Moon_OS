import os

def create_project_structure():
    # Define the project structure
    project_structure = [
        "moon_os/build",
        "moon_os/docs",
        "moon_os/drivers/input",
        "moon_os/drivers/network",
        "moon_os/drivers/storage",
        "moon_os/drivers/video",
        "moon_os/include/drivers",
        "moon_os/include/kernel",
        "moon_os/include/libs",
        "moon_os/include/modules",
        "moon_os/include/sys",
        "moon_os/kernel/arch/x86",
        "moon_os/kernel/arch/x86_64",
        "moon_os/kernel/arch/arm",
        "moon_os/kernel/arch/riscv",
        "moon_os/kernel/mm",
        "moon_os/kernel/sched",
        "moon_os/kernel/sys",
        "moon_os/libs/c",
        "moon_os/libs/crypto",
        "moon_os/libs/fs",
        "moon_os/libs/net",
        "moon_os/modules/fs",
        "moon_os/modules/net",
        "moon_os/modules/sys",
        "moon_os/scripts",
        "moon_os/tools/build",
        "moon_os/tools/debug",
        "moon_os/tools/test",
        "moon_os/userland/apps",
        "moon_os/userland/bin",
        "moon_os/userland/include",
        "moon_os/userland/libs",
        "moon_os/boot",
        "moon_os/config",
    ]

    # Create the directory structure
    for path in project_structure:
        os.makedirs(path, exist_ok=True)

def create_initial_files():
    # Create initial files with basic content
    initial_files = {
        "moon_os/Makefile": """
TARGET_ARCH := x86_64
CROSS_COMPILER := x86_64-elf-
CC := $(CROSS_COMPILER)gcc
LD := $(CROSS_COMPILER)ld
AS := $(CROSS_COMPILER)as

CFLAGS := -ffreestanding -O2 -Wall -Wextra
LDFLAGS := -nostdlib -T linker.ld

SRC := $(wildcard kernel/*.c) $(wildcard kernel/arch/$(TARGET_ARCH)/*.c)
OBJ := $(SRC:.c=.o)

all: moon_os.iso

%.o: %.c
\t$(CC) $(CFLAGS) -c $< -o $@

moon_os.bin: $(OBJ)
\t$(LD) $(LDFLAGS) -o $@ $^

moon_os.iso: moon_os.bin
\tmkdir -p iso/boot/grub
\tcp moon_os.bin iso/boot/moon_os.bin
\tcp grub.cfg iso/boot/grub/grub.cfg
\tgrub-mkrescue -o $@ iso

clean:
\trm -rf $(OBJ) moon_os.bin moon_os.iso iso

.PHONY: all clean
""",
        "moon_os/kernel/kernel.c": """
#include <stddef.h>
#include <stdint.h>

void kernel_main(void) {
    // Initialize hardware and subsystems
    // For now, just print a message (assuming you have a simple VGA text mode driver)
    const char *str = "Hello, World!";
    uint16_t *vga_buffer = (uint16_t *)0xB8000;
    for (size_t i = 0; str[i] != '\\0'; i++) {
        vga_buffer[i] = (uint16_t)str[i] | (uint16_t)0x0700;
    }

    // Loop forever
    while (1) {
        __asm__ __volatile__("hlt");
    }
}
""",
        "moon_os/README.md": """
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
""",
        "moon_os/boot/grub.cfg": """
menuentry "moon_os" {
    multiboot /boot/moon_os.bin
    boot
}
""",
        "moon_os/linker.ld": """
ENTRY(kernel_main)
SECTIONS
{
    . = 1M;
    .text : {
        *(.multiboot)
        *(.text*)
    }
    .rodata : {
        *(.rodata*)
    }
    .data : {
        *(.data*)
    }
    .bss : {
        *(.bss*)
    }
}
"""
    }

    # Write the initial files
    for path, content in initial_files.items():
        with open(path, 'w') as file:
            file.write(content.strip())

def main():
    create_project_structure()
    create_initial_files()
    print("Project structure and initial files have been created.")

if __name__ == "__main__":
    main()
