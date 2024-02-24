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

ln -s -f $HOME/dotfiles/config/resolution/monitor.sh $HOME/.screenlayout/monitor.sh
echo "sudo cp $HOME/dotfiles/config/resolution/monitors.xml /var/lib/gdm/.config/monitors.xml"
