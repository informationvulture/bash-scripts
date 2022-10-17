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


# Get the total days (possibly helpful)
beg_sec=$(date --date "$beg_time" +%s)
end_sec=$(date --date "$end_time" +%s)
final_days=$(((end_sec - beg_sec)/86400))


# Print the useful info.
printf "From $beg_time to $end_time: \n"


printf "There have been $attempts attempts so far \n"


printf "Or, that means in $final_days days. \n"
