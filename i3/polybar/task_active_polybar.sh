#!/bin/bash

active_task_age=`task rc.verbose: rc.report.next.columns:start.age rc.report.next.labels:1 limit:1 next`
# echo "$most_urgent_id" > /tmp/tw_polybar_id
echo "Started $active_task_age"
