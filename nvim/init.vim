let path = $MYVIMRC
echo $MYVIMRC
let dpath = path[0:len(path)-len("init.vim")-1]
let path = dpath[0:-1]
"sourcing plugins
"source $HOME/.config/nvim/plugins/plugins.vim
execute 'source' path."plugins/plugins.vim"
"sourcing lsp settings
"source $HOME/.config/nvim/plugins/lsp.vim
execute 'source' path."plugins/lsp.vim"
"sourcing telescope settings
"source $HOME/.config/nvim/plugins/telescope.vim
execute 'source' path."plugins/telescope.vim"
"Sourcing snippet mappings
"source $HOME/.config/nvim/plugins/vim-vsnip.vim
execute 'source' path."plugins/vim-vsnip.vim"
"Sourcing harpoon settings
"source $HOME/.config/nvim/plugins/harpoon.vim
execute 'source' path."plugins/harpoon.vim"
"Sourcing line indent settings
"source $HOME/.config/nvim/plugins/indent.vim
execute 'source' path."plugins/indent.vim"
"sourcing vimspector"
execute 'source' path."plugins/vimspector.vim"
"sourcing status line"
execute 'source' path."plugins/statusline.vim"


let g:tex_conceal = 'dmgs'
let g:tex_conceal = ''
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
"setting folds based on indentation (tabs)
"set foldmethod=indent
"set signcolumn=yes
set isfname+=@-@
" Give more space for displaying messages.
set cmdheight=1
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"set colorcolumn=80
colorscheme gruvbox
lua require('nvim-autopairs').setup{}



"Remaps:
"moving lines up and down"
:nnoremap <C-Up> <cmd> :m .-2 <cr>
:nnoremap <c-Down> <cmd> :m .+1 <cr>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"Pastes from the yank register"
:nnoremap P "0p
"paste insert mode
:inoremap <C-q> <Esc>"0pa
"Re-formatting line indents"
:map <F7> gg=G
"Making Y behave like C,D,S,etc (yanks from the cursor positon to the end of
"the line)
:nnoremap Y y$
"Making J move down by a half a screen"
:nnoremap L <C-d>
"Making K move up by a half a screen"
:nnoremap H <C-u>
"Moving to the next block
:nnoremap <C-l> /{[^}]*$<CR> w
:nnoremap <C-h> [{

"Keeping it centered, by it i mean the cursor, duhhh
:nnoremap J mzJ'z
:nnoremap n nzzzv
:nnoremap N Nzzzv

"undo Break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
