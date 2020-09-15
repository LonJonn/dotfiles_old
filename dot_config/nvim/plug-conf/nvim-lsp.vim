" Keybinds
nnoremap <silent>gd<cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K<cmd>lua vim.lsp.buf.hover()<CR>


" Language Servers
:lua << END
	require'nvim_lsp'.tsserver.setup{}
END
