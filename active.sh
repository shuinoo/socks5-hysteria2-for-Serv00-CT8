#!/bin/bash
current_time=$(date)
hy2=$(ps | grep "serv00sb run -c ./config.json" | grep -v "grep" | wc -l | awk '{print $1}')
if [ $hy2 -eq 0 ];then
  cd /home/shuinoo/serv00-play/singbox
  ./serv00sb run -c ./config.json
  echo "$current_time hy2 is deaded..." >> /home/shuinoo/hy2_status.log
else
  echo "$current_time hy2 is still running..." >> /home/shuinoo/hy2_status.log
fi
