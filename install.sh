# TODO: replace to $(pwd)
cp ./.zshenv ~/

# Install shell extensions
brew install zsh git-standup

# Make zsh default shell
chsh -s $(which zsh)

# Install autocompletion
brew install zsh-completions

# Install pretty ls
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
gem install colorls