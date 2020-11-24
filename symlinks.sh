# Use this repo as zsh Custom folder
cp ./zsh/.zshenv ~/

ln -si $(pwd)/git/all.gitconfig ~/.gitconfig
ln -si $(pwd)/git/personal.gitconfig ~/personal.gitconfig
ln -si $(pwd)/git/work.gitconfig ~/work.gitconfig
ln -si $(pwd)/git/.gitignore_global ~/.gitignore_global