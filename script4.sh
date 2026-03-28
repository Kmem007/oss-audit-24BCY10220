#!/bin/bash

LOGFILE=$1
KEYWORD="error"
COUNT=0

while read LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "Errors found: $COUNT"
