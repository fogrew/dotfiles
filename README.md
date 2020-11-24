# Dotfiles

Quick configuration macos as I like.

## Install

* Type `./symlinks.sh` to create symlinks
* Type `./brew.sh` to install software
* Type `./macos.sh` to setup mac os

## Features

* mac os setup
* [brew](https://brew.sh/) and software installing
* [zsh](https://ohmyz.sh/) config
  * aliases
  * functions
  * bookmarks
  * zplug plugins

## How it works

* Zsh tuning is enabled by replacing the `$ZDOTDIR` global zsh variable. It should be specified in the file `cp ./.zshenv ~/`.

## Resources

Official
* `defaults read com.apple.any-app`
* https://git-scm.com/docs/git-config

Unofficial
* https://github.com/mathiasbynens/dotfiles
* https://github.com/bramus/freshinstall
* https://github.com/vincentbernat/zshrc/blob/master/rc/bookmarks.zsh
* https://github.com/pawelgrzybek/dotfiles/blob/master/setup-macos.sh