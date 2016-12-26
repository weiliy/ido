#!/bin/bash

if [ -f action.md ] ; then
    gawk -f "${0%/*}/extract-done-task.awk" action.md
else
    echo "not found action.md"
fi




