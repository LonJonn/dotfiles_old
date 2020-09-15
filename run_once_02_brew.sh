#!/bin/bash
echo -e "\n\e[34m------------------------------------------------------------\e[39m"
echo -e "\n\e[34m		    Script 02 - Install modules\e[39m"
echo -e "\n\e[34m------------------------------------------------------------\e[39m"

# Installing brew formulae
echo -e "\n\e[34mInstalling brew formulae\e[39m"
brew bundle --global

# Installing pip packages
echo -e "\n\e[34mInstalling pip packages\e[39m"
pip3 install --user -r $HOME/.pip_requirements.txt
