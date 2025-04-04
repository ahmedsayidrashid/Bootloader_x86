echo "Creatiing the binaries..."

nasm -f bin -o bootloader.bin assembly.asm

echo "Creating the boot image..."

dd if=bootloader.bin of=boot.img bs=512 count=1

echo "Running the image using qemu..."

qemu-system-x86_64 -fda boot.img -boot a -nographic

