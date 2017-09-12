## Makefile

export ARCH := arm
export CROSS_COMPILE := arm-xilinx-linux-gnueabi-

.PHONY: all
all: uImage_dt BOOT.BIN devicetree.dtb uImage


.PHONY: uImage_dt
uImage_dt:
	./rfbbp_dt.pl ../linux/arch/arm/boot/dts/zynq-zc706-adv7511-ad9361-fmcomms2-3.dts
	make -C ../linux zynq_xcomm_adv7511_defconfig
	make -C ../linux -j5 UIMAGE_LOADADDR=0x8000 uImage
	make -C ../linux zynq-zc706-adv7511-ad9361-fmcomms2-3.dtb


system_top.hdf: ../zc706/zc706.sdk/system_top.hdf
	cp ../zc706/zc706.sdk/system_top.hdf system_top.hdf

fsbl.elf system_top.bit: system_top.hdf
	rm -fr sdk
	mkdir -p sdk
	xsct rfbbp_fsbl.tcl
	cp sdk/hw/system_top.bit system_top.bit
	cp sdk/fsbl/Release/fsbl.elf fsbl.elf

BOOT.BIN: fsbl.elf system_top.bit u-boot-zc70x.elf rfbbp.bif 
	bootgen -image rfbbp.bif -o BOOT.BIN

devicetree.dtb: ../linux/arch/arm/boot/dts/zynq-zc706-adv7511-ad9361-fmcomms2-3.dtb
	cp ../linux/arch/arm/boot/dts/zynq-zc706-adv7511-ad9361-fmcomms2-3.dtb devicetree.dtb

uImage: ../linux/arch/arm/boot/uImage 
	cp ../linux/arch/arm/boot/uImage uImage

