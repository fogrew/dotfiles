# Git
alias got='git'
alias get='git'

# see configs for setup git shortcuts
# $ZSH/lib/git.zsh
# $ZSH/plugins/git/git.plugin.zsh
GIT_ALIASES_SHORTER_GIT_STATUS=1
GIT_ALIASES_SILENCE_GIT_STATUS=1
GIT_ALIASES_AUTOPUSH_NEW_BRANCH=1
GIT_ALIASES_ICDIFF=0

# узнать, как правильно сливать ветки, чтобы при удалении ветки можно было найти историю

alias gfs="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c \"(echo {} && cd {} && git status -sb && echo)\" \; && cd -"
alias go='gco'
alias gbra='git_current_branch'
alias unmerged='git --no-pager branch --no-merged'
alias gpl='gl'
alias gph='gp'
alias gphu='gpsup'
alias gpht='git push --tags'
alias gbro='git push origin --delete'
alias gdc='git diff --color | diff-so-fancy'
alias gsha='git_prompt_short_sha'
alias gshal='git_prompt_long_sha'

# TODO: setup formatting in git config https://git-scm.com/docs/git-config#git-config-color
alias gl='git log --decorate --graph --pretty=format:"%Cred%cn%Creset: %Cgreen%d%Creset %s %Cblue(%cr)"'

# zsh forgit fzf config
FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--layout=reverse-list
--preview-window='right:70%'
--bind='ctrl-j:preview-down,ctrl-k:preview-up'
--height '100%'
"
source "$PLUGINS/forgit/forgit.plugin.zsh"