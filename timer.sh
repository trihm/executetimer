#!/bin/bash
atd
at -f /script/scenario.sh now +$min minutes 
sleep "1"m
while [ ! -z "$(pgrep -x sh)" ]
do 
  sleep 1m
done
