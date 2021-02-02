#!/bin/bash
declare -a timer
declare -a scene
timer=(2 5)
scene=(script1.sh script2.sh)
#Lay gia tri cao nhat cua timer de set cho sleep
max=${timer[0]}
for i in ${timer[@]};
do
  (( i > $max )) && max=$i
done
echo $max
#Dat timer theo tung scene
for index in ${timer[@]};
do
  at -f ${scene[$index]} now +${timer[@]} minutes
done
sleep "$max"m
while [ ! -z "$(pgrep -x sh)" ]
do 
  sleep 1m
done
