lua require("hamster.telescope")

nnoremap <Leader>ff :lua require('telescope.builtin').find_files({hidden=true, silent =true,norempa = true})<CR>
nnoremap <leader>rc :lua require('hamster.telescope').search_dotfiles()<CR>
nnoremap <leader>bb :lua require('telescope.builtin').file_browser()<CR>
nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<CR>


