lua require("hamster.telescope")

nnoremap <Leader>ff :lua require('telescope.builtin').find_files({hidden=true})<CR>
nnoremap <leader>rc :lua require('hamster.telescope').search_dotfiles({hidden=true})<CR>
nnoremap <leader>bb :lua require('telescope').extensions.file_browser.file_browser()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep{vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u' }}<CR>


