"sourcing plugins
source $HOME/.config/nvim/plugins/plugins.vim
"sourcing lsp settings
source $HOME/.config/nvim/plugins/lsp.vim
"sourcing telescope settings
source $HOME/.config/nvim/plugins/telescope.vim
"Sourcing snippet mappings
source $HOME/.config/nvim/plugins/vim-vsnip.vim
set number
colorscheme gruvbox
lua require('nvim-autopairs').setup{}

