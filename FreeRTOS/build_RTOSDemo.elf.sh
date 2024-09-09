git clone https://github.com/FreeRTOS/FreeRTOS --depth=1
cd FreeRTOS
git submodule update --checkout --init --recursive
cd ..
cp ./Makefile FreeRTOS/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC/build/gcc
cp ./FreeRTOSConfig.h FreeRTOS/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC # Only do this if you want to disable configASSERT
cd FreeRTOS/FreeRTOS/Demo/RISC-V_RV32_QEMU_VIRT_GCC
make -C build/gcc
