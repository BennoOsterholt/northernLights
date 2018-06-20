# bin/sh

# echo
RED='\033[0;31m'
YELLOW='\e[33m'
NOC='\033[0m'
BLUE='\e[34m'

echo "echo -e = option will print escaped characters"
echo -e "${RED}How to echo / STDIN / STERR / escape stuff in bash ${NOC}"
echo -e "${YELLOW}initalizes an empty repository in `pwd` ${NOC}"

# Bypassing shell aliases
# alias ls='ls -Z'
ls
# only ls command
\ls

# with sed:
VAR='HEADERMy voice is my passwordFOOTER'
PASS="$(echo $VAR | sed 's/^HEADER(.*)FOOTER/1/')"
echo $PASS