#!/bin/bash

source  /home/admin/MyScripts/script/helpers/init.bash
# strftime -> %F -> y-m-d %R 24 hour notation of hours and minutes
debug=1
flags_init

printf "This is week %(%U/%Y)T.\n" -1
printf "log flag %(%F %T)T.\n" -1

# the loggor should print the fingy
printf '%(%F %T)T :: %s\n' -1 "thest inpot"

# okay, wrapping
printf '%(%F %T)T :: %s\n' -1 "thest inpot"