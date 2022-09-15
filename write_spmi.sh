#! /bin/bash
# check argument
if [ $# -lt 3 ]; then
	echo "usage: $0 slave-no address value."
	exit
fi
#
#adb root
#adb shell "mount -t debugfs none /sys/kernel/debug"
#adb shell "mount -t debugfs -o remount,rw none /sys/kernel/debug"
#adb shell "chmod 775 /sys/kernel/debug/regmap/spmi0-0$1/data"
#adb shell "ls -al /sys/kernel/debug/regmap/spmi0-0$1"
# display value before change
echo 0x$2 > /sys/kernel/debug/regmap/spmi0-0$1/address
echo 1    > /sys/kernel/debug/regmap/spmi0-0$1/count
#value=`adb shell "cat         /sys/kernel/debug/regmap/spmi0-0$1/data|cut -d \" \" -f 2|cut -b 1"`
#value=`adb shell "cat         /sys/kernel/debug/regmap/spmi0-0$1/data|tr -d \"\\r\"|cut -d \" \" -f 2"`
value=`cat         /sys/kernel/debug/regmap/spmi0-0$1/data|cut -d " " -f 2`
before=${value:0:2}
echo '***** before Write *****'
echo "read value before change = [$before]"
# write value
echo '***** write *****'
echo "write value[0x$3] to spmi0-0$1/address[0x$2]"
echo 0x$2   > /sys/kernel/debug/regmap/spmi0-0$1/address
echo $3 > /sys/kernel/debug/regmap/spmi0-0$1/data
# display value after change
echo 0x$2 > /sys/kernel/debug/regmap/spmi0-0$1/address
echo 1    > /sys/kernel/debug/regmap/spmi0-0$1/count
#value=`adb shell "cat         /sys/kernel/debug/regmap/spmi0-0$1/data|cut -d \" \" -f 2|cut -b 1"`
#value=`adb shell "cat         /sys/kernel/debug/regmap/spmi0-0$1/data|tr -d \"\\r\"|cut -d \" \" -f 2"`
value=`cat         /sys/kernel/debug/regmap/spmi0-0$1/data|cut -d " " -f 2`
after=${value:0:2}
echo '***** after write *****'
echo "read value after change = [$after]"
echo "[$before] -> [$after]"
