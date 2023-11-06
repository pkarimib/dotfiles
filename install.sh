#!/bin/bash
# assume repo has been cloned

# zsh
#sudo apt install zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#chsh -s $(which zsh)
# invariably shell won't be changed and might need you to run sudo vi /etc/passwd instead and change it

# copy dotfiles
cp bashrc ~/.bashrc
cp gitconfig ~/.gitconfig
cp tmux.conf ~/.tmux.conf
cp git-prompt.sh ~/.git-prompt.sh
cp vimrc ~/.vimrc
#cp zshrc ~/.zshrc

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# syntax highlighting package
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
