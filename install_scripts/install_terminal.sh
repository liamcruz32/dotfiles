#!/bin/bash

## Vim Plugins
################

if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]
then
        mkdir -pv "$HOME/.vim/autoload"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


## TMUX plugins
#################

if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


## Base16 colors
##################

if [[ ! -d "$HOME/.config/base16-shell" ]]
then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

## ~/.bashrc copy
###################
ln -s -f "$HOME/dotfiles/config/bashrc" "$HOME/.bashrc"

## ~/.vimrc copy
###################
ln -s -f "$HOME/dotfiles/config/vimrc" "$HOME/.vimrc"

## ~/.tmux.conf copy
###################
ln -s -f "$HOME/dotfiles/config/tmux.conf" "$HOME/.tmux.conf"
