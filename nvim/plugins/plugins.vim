call plug#begin('~/.config/nvim/autoload/plugged')
"Colorscheme
Plug 'gruvbox-community/gruvbox'

"Auto pairs (brackets thing)
Plug 'windwp/nvim-autopairs'

"LSP
Plug 'neovim/nvim-lspconfig'
"Plug 'kabouzeid/nvim-lspinstall' this was archived
Plug 'williamboman/nvim-lsp-installer'

"autocompletion engines
"Plug 'glepnir/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'
"autocompletion engines cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lua'


"telescope requirments
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
 "telescope modules
Plug 'nvim-telescope/telescope-file-browser.nvim'

"Snippet manager
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
"actual snippet
Plug 'rafamadriz/friendly-snippets'
Plug 'J0rgeSerran0/vscode-csharp-snippets'

"line indentation marker
Plug 'lukas-reineke/indent-blankline.nvim'

"harpoon
Plug 'ThePrimeagen/harpoon'

"vim debugger
"Plug 'puremourning/vimspector'

"status line (the bottom line thing)
Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'


"Other lsp servers
":java
Plug 'mfussenegger/nvim-jdtls'
call plug#end()

