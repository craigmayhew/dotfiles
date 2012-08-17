
# setup some command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -lha'

# define colours
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m'   # No Color

# useful functions that are too complex to be aliases
function status(){
    echo -e "\n${CYAN}Machine information:${NC}"; uname -a
    echo -e "\n${CYAN}Users logged on:${NC}"; w -h
    echo -e "\n${CYAN}Current date:${NC}"; date
    echo -e "\n${CYAN}Uptime:${NC}"; uptime
    echo -e "\n${CYAN}Memory:${NC}"; free
    echo -e "\n${CYAN}Filesystem:${NC}"; df -h
}

# useful variables (used later on in this script)
timestamp=$(date '+%G%m%d_%H%M%S')

# number of lines in the terminals history
HISTSIZE=1000
# number of lines to keep in the .history file
HISTFILESIZE=20000
# Make Bash append rather than overwrite the history on disk.
shopt -s histappend