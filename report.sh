#!/bin/bash

total_memory=$( free -m |awk '/Mem/{print $2}' )
total_cpu=$( awk '/processor/{count ++}END {print count}' /proc/cpuinfo )
echo "Total Physical memory : $total_memory"
echo "Total CPU cores : $total_cpu"
echo "Total Disk Space :"
df -hT
