lua require("hamster.telescope")

nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>rc :lua require('hamster.telescope').search_dotfiles()<CR>
nnoremap <leader>bb :lua require('telescope.builtin').file_browser()<CR>

