#!/bin/bash
# Get the CPU usage percentage
cpu_usage=$(top -b -n 1 | awk '/^%Cpu/ {print $2}')

# Get the memory usage percentage
memory_usage=$(free | awk '/Mem:/ {print $3/$2 * 100}')

# Get the disk usage percentage of the root filesystem
disk_usage=$(df -h / | awk '/\// {print $5}' | tr -d '%')

# Display the system statistics
echo "CPU Usage: $cpu_usage%"
echo "Memory Usage: $memory_usage%"
echo "Disk Usage: $disk_usage%"
