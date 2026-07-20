#!/bin/bash

SERVICE="nginx"

read -p "Do you want to check service status? (y/n): " CHOICE

if [ "$CHOICE" = "y" ]
then
    systemctl is-active "$SERVICE"
else
    echo "Skipped."
fi
