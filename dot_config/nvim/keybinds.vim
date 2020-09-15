" Nerdtree
map <C-e> :NERDTreeToggle<CR>

" LSP
nnoremap <silent>gd<cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K<cmd>lua vim.lsp.buf.hover()<CR>

