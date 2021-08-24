call plug#begin('~/.config/nvim/autoload/plugged')
"Colorscheme
Plug 'gruvbox-community/gruvbox'

"Auto pairs (brackets thing)
Plug 'windwp/nvim-autopairs'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

"autocompletion engines
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'

"telescope requirments
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Snippet manager
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
"actual snippet
Plug 'rafamadriz/friendly-snippets'
Plug 'J0rgeSerran0/vscode-csharp-snippets'

"Code clean up
Plug 'sbdchd/neoformat'
call plug#end()



