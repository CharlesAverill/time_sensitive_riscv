git clone https://github.com/FreeRTOS --depth=1
cp ./Makefile FreeRTOS/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC/build/gcc
cd FreeRTOS/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC
make -C build/gcc
