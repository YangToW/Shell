#!/bin/bash
#=======================================================
#
#           FILE:   seconds.sh
#          USAGE:   ./seconds.sh
#    DESCRIPTION:   ---
#
#         AUTHOR:   ---
#   ORGANIZATION:   
#        CREATED:   7/2/2021 11:34
#       REVISEON:   ---
#=======================================================

TIME_LIMIT=10
INTERVAL=1

echo
echo "Hit Control-C to exit before $TIME_LIMIT seconds."
echo

while [ "$SECONDS" -le "$TIME_LIMIT" ]
do # $SECONDS is an internal shell variable.
    if [ "$SECONDS" -le 1 ]
    then
        units=second
    else
        units=seconds
    fi
    
    echo "This script has been runing $SECONDS $units."
    # On a slow or overburdened machine, the script may skip a coun
    #+ every once in a while.
    sleep $INTERVAL
done

exit 0
