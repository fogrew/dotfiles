# TODO: replace to $(pwd)
cp ./.zshenv ~/

# Add spaceship theme
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install shell extensions
brew install zsh

# Make zsh default shell
chsh -s $(which zsh)

# Install autocompletion
brew install zsh-completions

# Install pretty ls
brew cask install homebrew/cask-fonts/font-hack-nerd-font lsd

# Install node version manager
brew install Schniz/tap/fnm
