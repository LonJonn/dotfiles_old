#!/bin/bash
echo -e "\n\e[34m------------------------------------------------------------\e[39m"
echo -e "\n\e[34m		    Script 01 - Setup\e[39m"
echo -e "\n\e[34m------------------------------------------------------------\e[39m"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Oh My ZSH
if [ ! -d ~/.oh-my-zsh ]
then
	echo -e "\n\e[34mInstalling Oh My ZSH!\e[39m"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


# p10k
if [ ! -d $ZSH_CUSTOM/themes/powerlevel10k ]
then
	echo -e "\n\e[34mInstalling p10k theme\e[39m"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi


# Oh My ZSH Plugins
echo -e "\n\e[34m[ Installing Oh My ZSH Plugins ]\e[39m"

if [ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]
then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

if [ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]
then
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi
