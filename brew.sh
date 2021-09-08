# Install command-line tools using Homebrew.

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check your system for potential problems
brew doctor

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install zsh via brew
if test -n "$ZSH_VERSION"; then
	brew install zsh	
fi

# Make zsh as default shell
if [[ $SHELL != "/bin/zsh" ]]; then
	chsh -s $(which zsh)
fi

brew bundle install

$(brew --prefix)/opt/fzf/install

# Remove outdated versions from the cellar.
brew cleanup