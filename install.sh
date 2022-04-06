#!/bin/sh

pwd=$PWD
for x in $(ls applications)
do
    for y in $(ls applications/$x)
    do
        ln -s -f "$PWD/applications/$x/$y" "$HOME/.config/$x/"
    done
done

cp -r "$PWD/themes/vimix-compact-dark" "$HOME/.themes/"
cp -r "$PWD/themes/Tela-circle-dark" "$HOME/.icons/"
