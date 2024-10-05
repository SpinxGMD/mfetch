#!/bin/bash

# get sysinfo
hostname=$(hostname)
kernel=$(uname -r)
uptime=$(uptime -p)
cpu=$(grep -m1 'model name' /proc/cpuinfo | cut -d':' -f2 | xargs)
memory=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
os=$(cat /etc/os-release | grep -m1 "PRETTY_NAME" | cut -d'=' -f2 | tr -d '"')

# print info
echo "=========================="
echo "         mfetch           "
echo "=========================="
echo "OS:      $os"
echo "Host:    $hostname"
echo "Kernel:  $kernel"
echo "Uptime:  $uptime"
echo "CPU:     $cpu"
echo "Memory:  $memory"
echo "=========================="

