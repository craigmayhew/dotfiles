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
