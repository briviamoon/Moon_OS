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
	$(CC) $(CFLAGS) -c $< -o $@

moon_os.bin: $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

moon_os.iso: moon_os.bin
	mkdir -p iso/boot/grub
	cp moon_os.bin iso/boot/moon_os.bin
	cp grub.cfg iso/boot/grub/grub.cfg
	grub-mkrescue -o $@ iso

clean:
	rm -rf $(OBJ) moon_os.bin moon_os.iso iso

.PHONY: all clean