#!/bin/sh

pwd=$PWD
for x in $(ls applications)
do
    for y in $(ls applications/$x)
    do
        mkdir -p "$HOME/.config/$x"
        ln -s -f "$PWD/applications/$x/$y" "$HOME/.config/$x/"
    done
done

cp -r "$PWD/appearance/themes/vimix-compact-dark" "$HOME/.themes/"
cp -r "$PWD/appearance/icons/Mint-Y-Dark-Aqua" "$HOME/.icons/"
cp -r "$PWD/appearance/icons/Adwaita" "$HOME/.icons/"
