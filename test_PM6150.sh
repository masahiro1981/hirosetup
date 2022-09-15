#! /bin/bash

echo "Executing script"

$SNAP/write_spmi.sh 1 4539 EE 1
$SNAP/write_spmi.sh 1 453A 02 1
$SNAP/write_spmi.sh 1 4639 60 1
$SNAP/write_spmi.sh 1 463A 04 1
$SNAP/write_spmi.sh 1 4739 60 1
$SNAP/write_spmi.sh 1 473A 04 1
$SNAP/write_spmi.sh 1 4839 84 1 
$SNAP/write_spmi.sh 1 483A 03 1
$SNAP/write_spmi.sh 1 4939 D0 1
$SNAP/write_spmi.sh 1 493A 07 1
$SNAP/write_spmi.sh 1 4A39 D0 1
$SNAP/write_spmi.sh 1 4A3A 07 1
$SNAP/write_spmi.sh 1 4B39 D0 1
$SNAP/write_spmi.sh 1 4B3A 07 1
$SNAP/write_spmi.sh 1 5039 16 1
$SNAP/write_spmi.sh 1 503A 0D 1
$SNAP/write_spmi.sh 1 5239 FF 1
$SNAP/write_spmi.sh 1 523A 0F 1
$SNAP/write_spmi.sh 1 5240 E4 1
$SNAP/write_spmi.sh 1 5241 0C 1
$SNAP/write_spmi.sh 1 5246 80 1

