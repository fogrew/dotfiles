# NPM aliases
alias nr="npm run"
alias gu="nr gulp"
alias rmn="rm -rf ./node_modules"
alias rmp="rm -rf ./node_modules package-lock.json"
alias hate.yarn="rm -rf ./node_modules yarn.lock"

alias n='fnm use'
alias nv='fnm use'

eval "$(fnm env --use-on-cd)"
export FNM_LOGLEVEL=info

autoload -U add-zsh-hook
_fnm_autoload_hook () {
  if [[ -f .node-version && -r .node-version ]]; then
    echo "fnm: Found .node-version"
    fnm use
  elif [[ -f .nvmrc && -r .nvmrc ]]; then
    echo "fnm: Found .nvmrc"
    fnm use
  fi
}

add-zsh-hook chpwd _fnm_autoload_hook \
  && _fnm_autoload_hook