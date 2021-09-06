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
"Sourcing line indent settings
source $HOME/.config/nvim/plugins/indent.vim

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nohlsearch
colorscheme gruvbox
lua require('nvim-autopairs').setup{}



"Remaps:
"moving lines up and down"
:nnoremap <C-Up> <cmd> :m .-2 <cr>
:nnoremap <c-Down> <cmd> :m .+1 <cr>
"Pastes from the yank register"
:nnoremap P "0p
"Re-formatting line indents"
:map <F7> gg=G
"Making Y behave like C,D,S,etc (yanks from the cursor positon to the end of
"the line)
:nnoremap Y y$
"Making J move down by a half a screen"
:nnoremap J <C-d>
"Making K move up by a half a screen"
:nnoremap K <C-u>
