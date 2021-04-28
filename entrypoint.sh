#!/usr/bin/bash

VIMCONF="/home/developer/.config/nvim/init.vim" 

#cp home/developer/init.vim $VIMCONF


#sudo chmod +w $VIMCONG
#echo "colorscheme gruvbox" >> $VIMCONF
#source $VIMCONF

cd "/home/developer/workspace" && nvim "$@" +"colorscheme gruvbox"
