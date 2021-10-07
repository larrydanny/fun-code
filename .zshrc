# Git branch in prompt.

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{cyan}%n@%M:~ %F{yellow}%. %F{green}$(parse_git_branch)%f %F{normal}$%f '
