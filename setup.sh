#! /bin/bash

echo "Running install hook"
#snap connect hirosetup:qcs-gpio-458 qcs410:qcs-gpio-458

#echo "458" > /sys/class/gpio/export
#echo "out" > /sys/class/gpio/gpio458/direction
#echo "1"   > /sys/class/gpio/gpio458/value
#sleep 0.3
#echo "0"   > /sys/class/gpio/gpio458/value

$SNAP/test_PM6150.sh


#setup eth usb cable 
if [ ! -f /etc/netplan/config.yaml ]; then
  ip l set enx3460f919d261 up
  cp $SNAP/config.yaml /etc/netplan/config.yaml
  netplan apply
fi

if [ -f /etc/netplan/config.yaml ]; then
  echo "Skip network setup...." 
fi


