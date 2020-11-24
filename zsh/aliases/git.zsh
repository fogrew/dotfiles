# see configs for setup git shortcuts
# $ZSH/lib/git.zsh
# $ZSH/plugins/git/git.plugin.zsh

# Avoid issues with `gpg` as installed via Homebrew.
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty)

alias g="git"
alias gs='git status'
alias gl='git graph'
alias gaa="git all"
alias gb="git branch"
alias gbc="git current"
alias gbdo="git push origin --delete"
# Delete all local branches that have been merged into HEAD
# alias gbdm="git branch -d $(git branch --merged | grep -v '^*' | tr -d '\n')"
alias gco="git checkout"
alias gcl="git clone --recurse-submodules"
alias gpl="git pull"
alias gc="git commit"
alias gph="git push"
alias gphu='git phu $(git_current_branch)'
alias gpht="git push --tags"

alias gfs="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c \"(echo {} && cd {} && git status -sb && echo)\" \; && cd -"

