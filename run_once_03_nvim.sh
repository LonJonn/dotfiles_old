#!/bin/bash
echo -e "\n\e[34m------------------------------------------------------------\e[39m"
echo -e "\n\e[34m		    Script 03 - NeoVim\e[39m"
echo -e "\n\e[34m------------------------------------------------------------\e[39m"

# VimPlug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# NeoVim node dependency
echo -e "\n\e[34mInstalling neovim node package\e[39m"
npm install -g neovim

