#! /bin/bash
TIMESTAMP=`date "+%m%d%Y.%H%M%S"`
#BOOTGEN="/scratch/rimas/xilinx/SDK/2016.4/bin/bootgen"
BOOTGEN="bootgen"

mkdir bootfiles.${TIMESTAMP}
$BOOTGEN -image boot.bif -o bootfiles.${TIMESTAMP}/BOOT.BIN
rm -f bootfiles
ln -s bootfiles.${TIMESTAMP} bootfiles

PROBEFILE="../zc706//zc706.runs/impl_1/debug_nets.ltx"
if [ -f $PROBEFILE ]; then
  echo "Copying debug_nets.ltx"
  cp $PROBEFILE bootfiles
fi

#cp -H devicetree.dtb uImage bootfiles.${TIMESTAMP}

cp system_top.bit bitfiles/system_top.${TIMESTAMP}.bit

#cp ADI/devicetree.adi.dtb bootfiles.${TIMESTAMP}/devicetree.dtb



