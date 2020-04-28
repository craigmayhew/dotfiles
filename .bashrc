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
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # linux
    
    # aggregate history of all terminals to same .history file
    shopt -s histappend
    export HISTSIZE=100000
    export HISTFILESIZE=100000
    export HISTCONTROL=ignoredups:erasedups
    export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"
    
    # Colorize ls by default
    alias ls='ls --color=auto'
    
    # Colorize grep/egrep/fgrep by default
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
fi

#rust compile optimizations
export CARGO_INCREMENTAL=1
export CARGO_BUILD_JOBS="$((nproc/2))"

eval "$(starship init bash)"

