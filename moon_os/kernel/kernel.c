#include <stddef.h>
#include <stdint.h>

void kernel_main(void) {
    // Initialize hardware and subsystems
    // For now, just print a message (assuming you have a simple VGA text mode driver)
    const char *str = "Hello, World!";
    uint16_t *vga_buffer = (uint16_t *)0xB8000;
    for (size_t i = 0; str[i] != '\0'; i++) {
        vga_buffer[i] = (uint16_t)str[i] | (uint16_t)0x0700;
    }

    // Loop forever
    while (1) {
        __asm__ __volatile__("hlt");
    }
}