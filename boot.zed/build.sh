#! /bin/bash
TIMESTAMP=`date "+%m%d%Y.%H%M%S"`
BOOTGEN="bootgen"
BOARD="zed"

if [ $# -ne 1 ]; then
    echo "$0: takes vivado project build dir as argument - project must have same name"
    exit 1
fi

bf="../$1/$1.runs/impl_1/system_top.bit"
echo $bf

if [[ -f $bf ]] ; then
  cp $bf .
  mkdir bootfiles.${TIMESTAMP}
  $BOOTGEN -image boot.bif -o bootfiles.${TIMESTAMP}/BOOT.BIN
  rm -f bootfiles
  ln -s bootfiles.${TIMESTAMP} bootfiles
  echo $bf > bootfiles/bitfilepath.txt
  
  PROBEFILE="../$1/$1.runs/impl_1/debug_nets.ltx"
  if [ -f $PROBEFILE ]; then
    echo "Copying debug_nets.ltx"
    cp $PROBEFILE bootfiles
  fi
   mv system_top.bit bitfiles/system_top.${TIMESTAMP}.bit
else
  echo file $bf does not exist
  exit 1
fi
