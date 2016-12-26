#!/bin/gawk

BEGIN {
    completed = 0
}

/^- \[x\]/ {
    completed = 1
}

/.*/ {
    if ( completed == 1 ) {
        print $0 >> "completed.md"
    } else {
        print $0 >> "not_completed.md"
    }
}

/^\s*$/ {
    in_task = 1
    completed = 0
}
