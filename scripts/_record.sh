#!/bin/bash

scriptdir="$( dirname -- "$BASH_SOURCE"; )";
source $scriptdir/env.sh

asciinema rec --title "Demo" --command "./_type_and_execute.sh ${1}"
