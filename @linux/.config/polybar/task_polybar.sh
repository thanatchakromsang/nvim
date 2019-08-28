#!/bin/bash

most_urgent_desc=`task rc.verbose: rc.report.next.columns:description rc.report.next.labels:1 limit:1 next`

most_urgent_id=`task rc.verbose: rc.report.next.columns:id rc.report.next.labels:1 limit:1 next`

most_urgent_due=`task rc.verbose: rc.report.next.columns:due.relative rc.report.next.labels:1 limit:1 next`

active_task_age=`task rc.verbose: rc.report.active.columns:start.age rc.report.active.labels: active limit:1`

active_task_check=`task rc.verbose: rc.report.active.columns:start.active rc.report.active.labels: active limit:1`

current_active_task=`task rc.verbose: rc.report.active.columns:description rc.report.active.labels: active limit:1`

pending_task=`task status:pending count`

waiting_task=`task status:waiting count`

if [ "$active_task_check" = "*" ]; then
    echo -n " active: $current_active_task | started: $active_task_age"
else
    echo -n "  urg: $most_urgent_desc | due: $most_urgent_due | pending: $pending_task | waiting: $waiting_task"
fi



