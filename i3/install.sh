#!/bin/bash

i3Dir="$HOME/.config/i3"
scriptDir="$i3Dir/scripts"
rofiDir="$HOME/.config/rofi"
dunstDir="$HOME/.config/dunst"

for dir in $i3Dir $scriptDir $rofiDir $dunstDir
do
    echo "Checking directory: $dir"
    if [[ ! -d $dir ]]
    then
        mkdir -p $dir
    fi
done

echo "Linking WM config and Status Bar Config"
for conf in config i3blocks.conf
do
    ln -s -f "$PWD/$conf" "$i3Dir/$conf"
done

echo "Linking i3 scripts"
for x in $(ls $PWD/scripts)
do
    ln -s -f "$PWD/scripts/$x" "$scriptDir"
done

echo "Linking rofi scripts"
for rof in $(ls $PWD/rofi)
do
    ln -s -f "$PWD/rofi/$rof" "$rofiDir"
done

echo "Linking dunst configuration file"
ln -s -f "$PWD/dunst/dunstrc" "$dunstDir"
