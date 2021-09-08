# zmodload zsh/zprof #debug speed zsh

# Brew 
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
export FZF_BASE=~/.fzf

local SOURCES=(
	# Variables and configs
	"$ZDOTDIR/vars/lang.zsh"
	"$ZDOTDIR/vars/spaceship-theme.zsh"
	"$ZDOTDIR/vars/speed-up.zsh"
	"$ZDOTDIR/vars/forgit.zsh"

	# init ohmyzsh
	"$ZSH/oh-my-zsh.sh"
	"$ZPLUG_HOME/init.zsh"

	"$ZDOTDIR/vars/zplug.zsh"

	# Aliases
	"$ZDOTDIR/aliases/nginx.zsh"
	"$ZDOTDIR/aliases/git.zsh"
	"$ZDOTDIR/aliases/node.zsh"
	"$ZDOTDIR/aliases/lsd.zsh"
	"$ZDOTDIR/aliases/brew.zsh"
	"$ZDOTDIR/aliases/zsh.zsh"
	"$ZDOTDIR/aliases/wrike.zsh"

	# Functions
	"$ZDOTDIR/functions/git.zsh"
	"$ZDOTDIR/functions/fzf.zsh"
	"$ZDOTDIR/functions/1password.zsh"
	"$ZDOTDIR/functions/imagemagick.zsh"
	"$ZDOTDIR/functions/bookmarks.zsh"

	
)

for file ($^SOURCES(.N)) source $file

# press zsh -xv for check length of configs
# zprof #debug speed zsh