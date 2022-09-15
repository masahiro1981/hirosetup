#! /bin/bash

# GPIO_70
echo "458" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio458/direction
echo "1"   > /sys/class/gpio/gpio458/value
usleep 300000
echo "0"   > /sys/class/gpio/gpio458/value

# no needed LE2.0 CS
#echo peripheral > /sys/bus/platform/devices/a600000.ssusb/mode
