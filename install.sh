# TODO: replace to $(pwd)
cp ./.zshenv ~/

# Install shell extensions
brew install zsh

# Make zsh default shell
chsh -s $(which zsh)

# Install autocompletion
brew install zsh-completions

# Add spaceship theme
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install pretty ls
brew cask install homebrew/cask-fonts/font-hack-nerd-font lsd

# Install node version manager
brew install Schniz/tap/fnm

# Install usefully terminal
brew cask install iterm2

# Install shell integration for terminal
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | zsh

# Install fuzzy finder
brew install fzf
$(brew --prefix)/opt/fzf/install