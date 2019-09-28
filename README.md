# zsh-config
This is my zsh config. This project contains aliases, functions, third-party plug-ins. It is needed for quick configuration of zsh with one command.

## Download
Clone with submodules!
```
mkdir -p ~/projects/configs/
cd ~/projects/configs/
git clone --recurse-submodules git@nights.site:Foggy/zsh-config.git
```

## Dependencies
[brew](https://brew.sh/) and [iterm2](https://www.iterm2.com).
You can install it by running the following file:

```
./dependencies.sh
```

## Installing
Tuning is enabled by replacing the global zsh variable with `$ZDOTDIR`. It should be specified in the file `~/.zshenv`.
You can install it by running the following file:

```
./install.sh
```