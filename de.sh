#!/bin/sh

pwd=$PWD
for x in i3 i3status dunst rofi
do
    for y in $(ls $x)
    do
        ln -s -f "$PWD/$x/$y" "$HOME/.config/$x/"
    done
done

