#!/bin/bash

set -euo pipefail

hostname_info() {

echo "===== Hostname & OS ====="

hostname

cat /etc/os-release | head -2

}

uptime_info() {

echo

echo "===== Uptime ====="

uptime

}

disk_info() {

echo

echo "===== Disk Usage ====="

du -sh /* 2>/dev/null | sort -hr | head -5

}

memory_info() {

echo

echo "===== Memory Usage ====="

free -h

}

cpu_info() {

echo

echo "===== Top CPU Processes ====="

ps aux --sort=-%cpu | head -6

}

main(){

hostname_info

uptime_info

disk_info

memory_info

cpu_info

}

main
