if [[ -z $ZPLUG_HOME ]]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

source $ZPLUG_HOME/init.zsh

zplug "plugins/fzf", from:oh-my-zsh, defer:2
zplug "plugins/fnm", from:oh-my-zsh
zplug 'wfxr/forgit'
zplug "4got-dev/4got", use:4got.plugin.sh
# debugging one:
# zplug "~/projects/fogrew/4got", from:local, use:4got.plugin.sh
zplug 'zsh-users/zsh-autosuggestions', defer:2
zplug 'zuxfoucault/colored-man-pages_mod', defer:3
zplug 'zdharma/fast-syntax-highlighting', defer:3
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
