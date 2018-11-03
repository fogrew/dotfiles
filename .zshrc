# zmodload zsh/zprof #debug speed zsh

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8 git"
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR="/usr/local/bin/subl"

HISTSIZE=1000
SAVEHIST=1000

# press zsh -xv for check length of configs

export RIPZ_TEXT="Alias tip: "

DISABLE_AUTO_UPDATE="true" # please upgrade manual with command upgrade_oh_my_zsh
ZSH_THEME="fogrew"
ZSH_CUSTOM="$ZDOTDIR/custom"

plugins=(git fzf ripz colored-man-pages_mod fast-syntax-highlighting)
export ZSH="$HOME/.oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

local ALIASES="$ZSH_CUSTOM/aliases"
local FUNCTIONS="$ZSH_CUSTOM/functions"
local PLUGINS="$ZSH_CUSTOM/plugins"

source "$ALIASES/projects.zsh"
source "$ALIASES/brew.zsh"
source "$ALIASES/git.zsh"
source "$ALIASES/node.zsh"
source "$ALIASES/colorls.zsh"

source "$FUNCTIONS/git.zsh"
source "$FUNCTIONS/fzf.zsh"
source "$FUNCTIONS/1password.zsh"

# ZSH
alias zshrc="$EDITOR $ZDOTDIR"
alias ohmyzsh="$EDITOR $ZSH"

# System tune
alias -g G='| rg -i'
alias lsizes="identify -format \"%f: %wx%h\n\" *.{jpg,jpeg,png,gif,webp}" # show dimensions of each images in dir

# zprof #debug speed zsh