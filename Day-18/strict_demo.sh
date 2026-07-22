#!/bin/bash

set -euo pipefail

NAME="Balaji"

echo "Testing Strict Mode"

echo "$NAME"

mkdir -p /tmp/demo

false || echo "The 'false' command failed, but continuing..."

echo "This line will now execute"
