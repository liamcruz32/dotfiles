#!/bin/sh

pwd=$PWD

# nvim Plugins
if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]
then
        mkdir -pv "$HOME/.vim/autoload"
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
                       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# TMUX plugins
if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]
then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Base16 colors
if [[ ! -d "$HOME/.config/base16-shell" ]]
then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

# ~/.bashrc copy
if [[ -f "$HOME/.bashrc" ]]
then
    mv "$HOME/.bashrc" "$HOME/.bashrc.bak"
fi
ln -s -f "$PWD/files/bashrc" "$HOME/.bashrc"

if [[ -f "$HOME/.vimrc" ]]
then
    mv "$HOME/.vimrc" "$HOME/.vimrc"
fi
ln -s -f "$PWD/files/vimrc" "$HOME/.vimrc"


