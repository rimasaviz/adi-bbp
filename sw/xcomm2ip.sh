#!/bin/bash

gcc -o xcomm2ip_m xcomm2ip_m.c
gcc -o xcomm2ip xcomm2ip.c

echo "System ID [1|2]> "
read id

if [ "$id" == "2" ]; then
	xterm -hold -e 'osc -p xcomm2ip_2.ini' &
else
	xterm -hold -e 'osc -p xcomm2ip_1.ini' &
fi

xterm -hold -e 'xcomm2ip_m' &
xterm -hold -e 'xcomm2ip' &

