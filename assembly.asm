; bootloader.asm
[org 0x7C00]           ; This specifies that the bootloader will load at 0x7C00 in memory.

; Set up the video mode
mov ah, 0x0E           ; Teletype output (prints a character)
mov al, 'H'            ; The character to print
int 0x10               ; BIOS video interrupt
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'P'
int 0x10

; Infinite loop (so the bootloader doesn’t exit)
hang:
    nop
    jmp hang            ; Loop forever
    
; The bootloader must end with this signature:
times 510 - ($ - $$) db 0 ; Pad the rest of the boot sector with zeros
dw 0xAA55               ; Boot sector signature (this tells the BIOS this is a valid bootloader)
