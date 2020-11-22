# see configs for setup git shortcuts
# $ZSH/lib/git.zsh
# $ZSH/plugins/git/git.plugin.zsh

# GPG init
export GPG_TTY=$(tty)

# узнать, как правильно сливать ветки, чтобы при удалении ветки можно было найти историю
alias g="git"
alias gaa="git add --all"
alias gb="git branch"
alias gbc="git branch --show-current"
alias gbd="git branch -d"
alias gbdo="git push origin --delete"
# Delete all local branches that have been merged into HEAD
# alias gbdm="git branch -d $(git branch --merged | grep -v '^*' | tr -d '\n')"
alias gco="git checkout"
alias gcl="git clone --recurse-submodules"
alias gpl="git pull"
alias gc="git commit"
alias gph="git push"
alias gphu='git push --set-upstream origin $(git_current_branch)'
alias gpht="git push --tags"
alias unmerged="git --no-pager branch --no-merged"

alias gfs="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c \"(echo {} && cd {} && git status -sb && echo)\" \; && cd -"

alias gdc="git diff --color"

# TODO: setup formatting in git config https://git-scm.com/docs/git-config#git-config-color
alias gl='git log --decorate --graph --pretty=format:"%Cred%cn%Creset: %Cgreen%d%Creset %s %Cblue(%cr)"'