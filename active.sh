#!/bin/bash
current_time=date
hy2=$(pp | grep "serv00sb run | wc -l)
if [[ $hy2 -eq 0 ]];then
  cd /home/shuinoo/serv00-play/singbox
  ./serv00sb run -c ./config.json
  echo "$current_time hy2 is deaded..." >> /home/shuinoo/hy_runing.log
else
  echo "$current_time hy2 is still running..." >> /home/shuinoo/hy_runing.log
fi

  

