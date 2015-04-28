
#user specific functions
function limll {
    limit=${1:-20}
    ls -l | head -n $limit
    if [[ ${PIPESTATUS[0]} -ne 0 ]];
    then
        echo "$(($(ls | wc -l) - $limit)) lines omitted"
    fi
}
function cd {
    dir="${@:-$HOME}" # ~ does not expand when in quotes
    if ! builtin cd "$dir"
    then
        dir=$(compgen -d "${dir}" | head -1)
        if builtin cd "$dir" &>/dev/null
        then
            clear; pwd; limll;
        fi
    else
        clear; pwd; limll;
    fi
}

#user specific settings
HISTSIZE=10000
HISTFILESIZE=20000

# Colorize ls by default
alias ls='ls --color=auto'

# Colorize grep/egrep/fgrep by default
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
