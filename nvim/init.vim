"sourcing plugins
source $HOME/.config/nvim/plugins/plugins.vim
"sourcing lsp settings
source $HOME/.config/nvim/plugins/lsp.vim
"sourcing telescope settings
source $HOME/.config/nvim/plugins/telescope.vim
"Sourcing snippet mappings
source $HOME/.config/nvim/plugins/vim-vsnip.vim
"Sourcing harpoon settings
source $HOME/.config/nvim/plugins/harpoon.vim
set number
colorscheme gruvbox
lua require('nvim-autopairs').setup{}



"Remaps:
"moving lines up and down"
:nnoremap <C-Up> <cmd> :m .-2 <cr>
:nnoremap <c-Down> <cmd> :m .+1 <cr>


