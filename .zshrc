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

export RIPZ_TEXT="💡 Use alias: " 

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_TIME_SHOW=true

SPACESHIP_BATTERY_THRESHOLD=30

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package section
  node          # Node.js section
  php           # PHP section
  docker        # Docker section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


DISABLE_AUTO_UPDATE="true" # please upgrade manual with command upgrade_oh_my_zsh
ZSH_THEME="spaceship"
ZSH_CUSTOM="$ZDOTDIR/custom"

export FZF_BASE=~/.fzf

plugins=(git fzf ripz colored-man-pages_mod fast-syntax-highlighting)
export ZSH="$HOME/.oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

local ALIASES="$ZSH_CUSTOM/aliases"
local FUNCTIONS="$ZSH_CUSTOM/functions"
local PLUGINS="$ZSH_CUSTOM/plugins"

source "$ALIASES/projects.zsh"
source "$ALIASES/nginx.zsh"
source "$ALIASES/git.zsh"
source "$ALIASES/node.zsh"

source "$FUNCTIONS/git.zsh"
source "$FUNCTIONS/fzf.zsh"
source "$FUNCTIONS/1password.zsh"

# ZSH
alias zshrc="$EDITOR $ZDOTDIR"
alias ohmyzsh="$EDITOR $ZSH"

# Docker
alias d="docker"

# Brew
alias brs="brew services"
alias bri="brew install"

# Pretty ls
alias l='lsd -lAh --group-dirs first --blocks permission,size,name'
alias la='lsd -lA --group-dirs first'
alias lh="lsd -lA --group-dirs first .*" # show hidden files/directories only

# System tune
alias -g G='| rg -i'
alias lsizes="identify -format \"%f: %wx%h\n\" *.{jpg,jpeg,png,gif,webp}" # show dimensions of each images in dir

# zprof #debug speed zsh