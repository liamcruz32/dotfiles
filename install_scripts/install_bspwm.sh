#!/bin/bash

bspwm="$HOME/dotfiles/config/bspwm"
polybar="$HOME/dotfiles/config/polybar"

echo "Checking directory: Polybar"
if [[ ! -d $HOME/.config/polybar ]]
then
    mkdir -pv $HOME/.config/polybar
fi

for file in $(ls $polybar)
do
    ln -s -f $polybar/$file $HOME/.config/polybar/$file
done

echo "Checking directory: sxhkd"
if [[ ! -d $HOME/.config/sxhkd ]]
then
    mkdir -pv $HOME/.config/sxhkd
fi

echo "Checking directory: bspwm"
if [[ ! -d $HOME/.config/bspwm ]]
then
    mkdir -pv $HOME/.config/bspwm
fi

ln -s -f $bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
ln -s -f $bspwm/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
