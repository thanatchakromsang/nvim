#!/bin/bash

most_urgent_desc=`task rc.verbose: rc.report.next.columns:description rc.report.next.labels:1 limit:1 next`

most_urgent_id=`task rc.verbose: rc.report.next.columns:id rc.report.next.labels:1 limit:1 next`

most_urgent_due=`task rc.verbose: rc.report.next.columns:due.relative rc.report.next.labels:1 limit:1 next`

active_task_age=`task rc.verbose: rc.report.next.columns:start.age rc.report.next.labels:1 limit:1 next`

active_task_toggle=`task rc.verbose: rc.report.next.columns:start.active rc.report.next.labels:1 limit:1 next`

echo "$most_urgent_id" > /tmp/tw_polybar_id
echo -n "$most_urgent_desc"

if [ ! "$most_urgent_due" = "" ]
  then
    echo -n " due: $most_urgent_due"
fi

if [ "$active_task_toggle" = "*" ]
  then
    echo -n " started: $active_task_age"
fi



