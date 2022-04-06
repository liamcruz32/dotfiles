#!/bin/sh

pwd=$PWD

if [[ ! -f "$HOME/.vim/autoload/plug.vim" ]]
then
        mkdir -pv $HOME/.vim/autoload
        mkdir -v $HOME/.vim/plugged
        cp $PWD/terminal/plug.vim $HOME/.vim/autoload/
fi

for x in $(ls terminal/files)
do
        if [[ -f "$HOME/.$x" ]]
        then
            mv "$HOME/.$x" "$HOME/.$x.bak"
        fi
        ln -s -f "$PWD/terminal/files/$x" "$HOME/.$x"
done

