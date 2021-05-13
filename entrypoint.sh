#!/usr/bin/bash

echo "export FZF_DEFAULT_COMMAND="find -L"" >> /home/developer/.bashrc
source /home/developer/.bashrc

cd "/home/developer/workspace" && nvim "$@" +"colorscheme gruvbox"
