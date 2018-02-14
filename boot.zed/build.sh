#! /bin/bash
TIMESTAMP=`date "+%m%d%Y.%H%M%S"`
BOOTGEN="bootgen"

mkdir bootfiles.${TIMESTAMP}
$BOOTGEN -image boot.bif -o bootfiles.${TIMESTAMP}/BOOT.BIN
rm -f bootfiles
ln -s bootfiles.${TIMESTAMP} bootfiles

PROBEFILE="../zed/zed.runs/impl_1/debug_nets.ltx"
if [ -f $PROBEFILE ]; then
  echo "Copying debug_nets.ltx"
  cp $PROBEFILE bootfiles
fi

cp system_top.bit bitfiles/system_top.${TIMESTAMP}.bit

