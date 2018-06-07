#! /usr/bin/env bash

display_help(){

local RED='\e[1;31m'  
local YELLOW='\e[33m'
local NOC='\033[0m'
local BLUE='\e[34m'

if ([[ "$1" = "-h" ]] || [[ "$1" = "--help" ]] || [[ -z "$1" ]]); then
    echo -e "${RED}USAGE:$0${NOC}"
    echo -e "\tcopies passed unit file to proper folder"
    echo -e "\tchmod 622 for this file"
    echo -e "\tusing somesin somesin"
    echo -e "${RED}PREREQUISITES${NOC}"
    echo -e "\tfile is located within home directory"
    exit 0

elif ([[ "$1" = "-p" ]] || [[ "$1" = "--pid" ]]); then
    echo -e "$BASHPID"
fi
}
display_help $1

###############################################
# check if file has a service extension
###############################################
unit_file=$1


# extension
echo -e "${unit_file#*.}" 

if [[ "${unit_file#*.}" = "service" ]]; then 
    echo -e "okili dokili"
else
    echo -e "njet"
fi

###############################################
# check if file is located within $HOME
# get the full path
# what to do if there is more then one?
###############################################

found_unit_file=$(find $HOME -name "${unit_file}")
echo -e "Found unit file for \n\t${unit_file} at\n\t${found_unit_file}" 

###############################################
# if the found_unit_file variable is empty,
# we stop here
# else, we copy it to the directory
###############################################

if [[ -n "${found_unit_file}" ]]; then
    read -rp $'Continue (Y/n) : ' -ei $'n' continue_key
    if [[ "${continue_key}" = "Y" ]]; then
        echo -e "execute"
    fi
    echo -e "user choice: ${continue_key}\nExiting..."
    exit 0
fi    

###############################################
# we could, of course do a lot of 
# checking of the file is indeed a unit file
# todo: HOW?
###############################################

exit 0        