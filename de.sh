#!/bin/sh

i3=(config monitor.sh)
i3status=(


if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]
then
        mkdir -pv $HOME/.vim/autoload
        mkdir -v $HOME/.vim/plugged
        cp plug.vim $HOME/.vim/autoload/
fi

for FILE in vimrc bashrc tmux.conf
do
        if [[ -f "$HOME/.$FILE" ]]
        then
            mv "$HOME/.$FILE" "$HOME/.$FILE.bak"
        fi
        ln -s "$FILE" "$HOME/.$FILE"
done

