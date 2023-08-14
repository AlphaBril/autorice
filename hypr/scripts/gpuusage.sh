#!/usr/bin/env bash

# Get values
nvidia=$(nvidia-smi | grep Default | tr -s " ")
fan=$(echo $nvidia | cut -d " " -f 2)
temp=$(echo $nvidia | cut -d " " -f 3)
perc=$(echo $nvidia | cut -d " " -f 13)
val=$(echo $nvidia | cut -d " " -f 9,10,11)

# echo values
echo "󰈐 $fan  $temp 󱃀 $perc"

# Show tooltip
echo "$val"

