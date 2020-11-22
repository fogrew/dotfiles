# Use this repo as zsh Custom folder
cp ./.zshenv ~/

if test -n "$ZSH_VERSION"; then
	# Install shell extensions
	brew install zsh

	# Make zsh default shell
	chsh -s $(which zsh)
fi

# Install pretty ls
brew cask install lsd

# Install node version manager
brew install Schniz/tap/fnm

# Install usefully terminal
brew cask install iterm2

# Install shell integration for terminal
curl -L https://iterm2.com/shell_integration/install_shell_integration.sh | zsh

# Install fuzzy finder
brew install fzf
$(brew --prefix)/opt/fzf/install