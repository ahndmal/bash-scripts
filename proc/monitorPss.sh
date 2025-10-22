#!/bin/bash                                                                                     │~
                                                                                                │~
pid=1                                                                                           │~
echo 'Monitoring PSS of the process:' $pid                                                      │~
                                                                                                │~
while true                                                                                      │~
do                                                                                              │~
    cat /proc/$pid/smaps | grep -i 'Pss:' | awk '{Total+=$2} END {print total}'                 │~
    sleep 10                                                                                    │~
done
