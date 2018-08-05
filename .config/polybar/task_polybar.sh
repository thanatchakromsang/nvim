#!/bin/bash

most_urgent_desc=`task rc.verbose: rc.report.next.columns:description rc.report.next.labels:1 limit:1 next`

most_urgent_id=`task rc.verbose: rc.report.next.columns:id rc.report.next.labels:1 limit:1 next`

most_urgent_due=`task rc.verbose: rc.report.next.columns:due.relative rc.report.next.labels:1 limit:1 next`

active_task_age=`task rc.verbose: rc.report.active.columns:start.age rc.report.active.labels: active limit:1`

active_task_check=`task rc.verbose: rc.report.active.columns:start.active rc.report.active.labels: active limit:1`

current_active_task=`task rc.verbose: rc.report.active.columns:description rc.report.active.labels: active limit:1`

if [ "$active_task_check" = "*" ]; then
    echo -n "$current_active_task | started: $active_task_age"
else
    echo -n " $most_urgent_desc | due: $most_urgent_due"
fi



