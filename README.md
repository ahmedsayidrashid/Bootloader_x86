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

if using a `qemu`, run the following command to run the bootloader:

```
qemu-system-x86_64 -fda boot.img -boot a -nographic
```

Users should encounter the bootloader up and running.

[nasm]: https://www.nasm.us/
