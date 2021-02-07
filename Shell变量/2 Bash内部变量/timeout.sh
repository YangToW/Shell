#!/bin/bash
#=======================================================
#
#           FILE:   timeout.sh
#          USAGE:   ./timeout.sh
#    DESCRIPTION:   ---
#
#         AUTHOR:   ---
#   ORGANIZATION:   
#        CREATED:   7/2/2021 11:58
#       REVISEON:   ---
#=======================================================

set -o nounset # Treat unset variables as an error
TMOUT=3

echo "Are you sure?(Y/N)"
read input

if [ "$input" == "Y" ]
then
    echo "Continue..."
else
    echo "Exit!"
fi

