"lua require('lspsaga')
lua require('hamster.cmp')
lua require('hamster.lsp')
set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']


nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
"nnoremap <C-k> :lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap gR :lua vim.lsp.buf.rename()<CR>
"nnoremap K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap ga :lua vim.lsp.buf.code_action()<CR>
nnoremap gA :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <C-n> :lua vim.diagnostic.goto_next()<CR>
nnoremap <C-p> :lua vim.diagnostic.goto_prev()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>
"Char 46 is '.' "
"nnoremap <Char-46> <cmd> lua require('lspsaga.codeaction').code_action()<CR>
nnoremap <Char-46> :lua vim.lsp.buf.code_action()<CR>

"nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)



