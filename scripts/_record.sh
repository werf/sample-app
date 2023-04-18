#!/bin/bash

scriptdir="$( dirname -- "$BASH_SOURCE"; )";
asciinema rec --title "Demo" --command "${1}"
