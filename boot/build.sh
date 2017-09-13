#! /bin/bash
TIMESTAMP=`date "+%H%M%S.%m%d%Y"`
BOOTGEN="/scratch/rimas/xilinx/SDK/2016.2/bin/bootgen"

mkdir bootfiles.${TIMESTAMP}
$BOOTGEN -image boot.bif -o bootfiles.${TIMESTAMP}/BOOT.BIN
#cp -H devicetree.dtb uImage bootfiles.${TIMESTAMP}

cp system_top.bit bitfiles/system_top.${TIMESTAMP}.bit

#cp ADI/devicetree.adi.dtb bootfiles.${TIMESTAMP}/devicetree.dtb



