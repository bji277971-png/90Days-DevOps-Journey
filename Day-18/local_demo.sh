#!/bin/bash

demo_local() {

local NAME="Balaji"

echo "Inside Function: $NAME"

}

demo_global() {

ROLE="DevOps"

}

demo_local

echo "Outside Function: $NAME"

demo_global

echo "Outside Function: $ROLE"
