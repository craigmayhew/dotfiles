
# setup some command aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -lha'

# useful functions that are too complex to be aliases
function status(){
    echo -e "\nMachine information:"; uname -a
    echo -e "\nUsers logged on:"; w -h
    echo -e "\nCurrent date:"; date
    echo -e "\nUptime:"; uptime
    echo -e "\nMemory:"; free
    echo -e "\nFilesystem:"; df -h
}

# useful variables (used later on in this script)
timestamp=$(date '+%G%m%d_%H%M%S')

# number of lines in the terminals history
HISTSIZE=1000
# number of lines to keep in the .history file
HISTFILESIZE=20000
# Make Bash append rather than overwrite the history on disk.
shopt -s histappend