#! /bin/bash

echo "Running install hook"
#snap connect hirosetup:qcs-gpio-458 qcs410:qcs-gpio-458

#echo "458" > /sys/class/gpio/export
#echo "out" > /sys/class/gpio/gpio458/direction
#echo "1"   > /sys/class/gpio/gpio458/value
#sleep 0.3
#echo "0"   > /sys/class/gpio/gpio458/value

$SNAP/test_PM6150.sh
