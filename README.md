# Bootloader_x86
Custom bootloader.

### Dependencies:

- [nasm][nasm]

### Running:
Assemble using nasm to output a binary file
```
nasm -f bin -o bootloader.bin bootloader.asm 
```

Create the disk image
```
dd if=bootloader.bin of=boot.img bs=512 count=1
```

This will create a disk image that can be used in a virtual machine

Add the disk image as a floppy, and start the system. 

Users should encounter a terminal with a "hello" message at the top right.


[nasm]: https://www.nasm.us/
