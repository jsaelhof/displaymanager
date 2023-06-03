#!/bin/bash

# Usage: ./swap-displays.sh 0 1
#   Swaps display 0 (laptop display) position with the display 1 position.
#   Also works for more displays, for example:
#  ./swap-displays.sh 1 2

# Must install displayplacer before using:
#  https://github.com/jakehilborn/displayplacer

# WARNING: If the displays don't have the exact same config this command might fail

DISPLAYPLACER_OUT=`displayplacer list`

declare -a DISPLAYS=( $(echo "$DISPLAYPLACER_OUT" | grep Persistent | cut -d: -f2 | xargs) )

CURRENT_STATE=$( echo "$DISPLAYPLACER_OUT" | tail -1)

SWAP_COMMAND=$(
    echo $CURRENT_STATE \
    | sed s/${DISPLAYS[$1]}/FIRST_SCREEN/g \
    | sed s/${DISPLAYS[$2]}/SECOND_SCREEN/g \
    | sed s/FIRST_SCREEN/${DISPLAYS[$2]}/g \
    | sed s/SECOND_SCREEN/${DISPLAYS[$1]}/g
)

eval $SWAP_COMMAND
