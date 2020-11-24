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

# Security
brew cask install 1password 1password-cli gpg2
brew cask install little-snitch micro-snitch
brew cask install protonvpn tunnelblick openconnect veracrypt

# For CLI
brew install homebrew/cask-fonts/font-hack-nerd-font
brew install mas-cli/tap/mas
mas install 497799835 # XCode

# For manager
mas install 1176895641 # Spark (mail)
brew cask install appcleaner omnidisksweeper
brew cask install notion typora
brew cask install slack telegram
brew cask install flux

# Finder extenion
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlimagesize webpquicklook qlstephen qlmarkdown quicklook-json betterzip suspicious-package

# Restart quicklook
defaults write org.n8gray.QLColorCode extraHLFlags '-l'
qlmanage -r
qlmanage -m

# For developer
brew install iterm2 visual-studio-code sublime-text phpstorm
brew install wget composer openssl nginx php71 mysql
brew install imagemagick graphicsmagick
brew install wget Schniz/tap/fnm bat ripgrep git-standup lsd jq git-delta
brew cask install figma imagealpha imageoptim svgo

# Video
brew cask install iina vlc ffmpeg

# with configure after install
brew install fzf

$(brew --prefix)/opt/fzf/install

# Remove outdated versions from the cellar.
brew cleanup