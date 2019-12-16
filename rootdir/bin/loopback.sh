#! /vendor/bin/sh

export PATH=system/vendor/bin

echo "loopback test"
spkl=1
spkr=2
rec=3
mic1=4
enable=1
disable=0
open="-Y"
close="-N"

if test $2 -eq $enable
then
	loopbacktest $open "$1"
elif test $2 -eq $disable
then
	loopbacktest $close "$1"
	setprop sys.loopback-spkl 2
	setprop sys.loopback-spkr 2
	setprop sys.loopback-rec 2
	setprop sys.loopback-mic1 2
else
	echo "input error ctl cmd!"
fi
