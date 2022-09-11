#!/bin/bash

if [ $# -eq 0 ]; then
    curl wttr.in/rieti
else
    curl wttr.in/$1
fi
