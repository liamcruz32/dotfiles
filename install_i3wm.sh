#!/bin/bash

i3="$PWD/config/i3"
scripts="$PWD/scripts"

echo "Checking directory: i3"
if [[ ! -d $HOME/.config/i3 ]]
then
    mkdir -pv $HOME/.config/i3/scripts
fi

for file in $(ls -p $i3 | grep -v /)
do
    ln -s -f $i3/$file $HOME/.config/i3/$file
done

for file in $(ls -p $scripts | grep -v /)
do
    ln -s -f $scripts/$file $HOME/.config/i3/scripts/$file
done
