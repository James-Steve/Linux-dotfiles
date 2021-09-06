require('lspconfig')
require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require'lspconfig'.bashls.setup{ on_attach=on_attach }
require'lspconfig'.vimls.setup{ on_attach=on_attach }
require'lspconfig'.pyright.setup{ on_attach=on_attach }
require'lspconfig'.svelte.setup{on_attach=on_attach}


require'lspinstall'.setup()


local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup
  {
      on_attach=on_attach,
  }
end


