#!/bin/bash

check_disk() {
	echo "===== Disk Usage ====="
	df -h /

}

check_memory() {
	echo 
	echo "===== Memory Usage ====="
	free -h
}

echo "system Report"

check_disk

check_memory
