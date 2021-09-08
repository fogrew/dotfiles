if [[ -z $ZPLUG_HOME ]]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug 'wfxr/forgit'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zuxfoucault/colored-man-pages_mod'
zplug 'zdharma/fast-syntax-highlighting'
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