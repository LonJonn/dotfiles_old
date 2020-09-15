" General
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keybinds.vim

" Theme
source $HOME/.config/nvim/themes/horizon.vim

:lua << END
	require'nvim_lsp'.tsserver.setup{}
END
