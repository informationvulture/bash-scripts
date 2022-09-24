#!/bin/bash
#
# Print the total failed login attempts.


# Store the log file in variable, where we can use it later.
readonly LOG_FILE=$(sudo cat /var/log/auth.log)


# The number of attempted logins, based on the number of lines.
attempts=$(printf "$LOG_FILE" | grep Failed | wc -l)


# The start time of the log file.
beg_time=$(printf "$LOG_FILE" | head -1 | cut -f1-3 -d' ')


# The end time of the log file.
end_time=$(printf "$LOG_FILE" | tail -1 | cut -f1-3 -d' ')


# Print the useful info.
printf "From $beg_time to $end_time: \n"


printf "There have been $attempts attempts so far \n"
