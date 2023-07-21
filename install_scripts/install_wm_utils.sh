#!/bin/bash

configDir="$PWD/config"

for dir in rofi dunst picom kitty
do
    echo "Checking directory: $dir"
    if [[ ! -d $HOME/.config/$dir ]]
    then
        mkdir -pv $HOME/.config/$dir
    fi

    for file in $(ls $HOME/dotfiles/config/$dir)
    do
        ln -s -f $HOME/dotfiles/config/$dir/$file $HOME/.config/$dir/$file
    done
done
