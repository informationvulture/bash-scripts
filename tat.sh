#!/bin/bash
#
# Print the total failed login attempts.


readonly LOG_FILE=$(sudo cat /var/log/auth.log)


attempts=$(printf "$LOG_FILE" | grep Failed | wc -l)


beg_time=$(printf "$LOG_FILE" | head -1 | cut -f1-3 -d' ')


end_time=$(printf "$LOG_FILE" | tail -1 | cut -f1-3 -d' ')


printf "From $beg_time to $end_time: \n"


printf "There have been $attempts attempts so far \n"
