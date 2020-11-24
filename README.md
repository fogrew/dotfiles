# Dotfiles

Quick configuration macos as I like.

## Install

* Type `./symlinks.sh` to create symlinks
* Type `./brew.sh` to install software
* Type `./macos.sh` to setup mac os

## Features

* mac os setup
* `[brew](https://brew.sh/)` and sowtware installing
* `[zsh](https://ohmyz.sh/)` config
  * aliases
  * functions
  * zplug plugins

## How it works

* Zsh tuning is enabled by replacing the `$ZDOTDIR` global zsh variable. It should be specified in the file `cp ./.zshenv ~/`.