require('lspconfig')
--[[
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
--]]



local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = on_attach
    }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

     if server.name == "jsonls" then
	 	local jsonls_opts = require("hamster.lsp_settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("hamster.lsp_settings.summneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    server:setup(opts)
end)

local INSTALL_DIRS = {
    ["bashls"] = "bash",
    ["dockerls"] = "dockerfile",
    ["elixirls"] = "elixir",
    ["elmls"] = "elm",
    ["eslint"] = "vscode-eslint",
    ["gopls"] = "go",
    ["hls"] = "haskell",
    ["intelephense"] = "php",
    ["kotlin_language_server"] = "kotlin",
    ["phpactor"] = "phpactor-source",
    ["purescriptls"] = "purescript",
    ["pyright"] = "python",
    ["rust_analyzer"] = "rust",
    ["tailwindcss"] = "tailwindcss_npm",
    ["terraformls"] = "terraform",
    ["texlab"] = "latex",
    ["vimls"] = "vim",
    ["yamlls"] = "yaml",
}


function pineapple(server_name)
    return INSTALL_DIRS[server_name] or server_name
end

local lsp_installer = require("nvim-lsp-installer")


function something()
    
local names = servers.get_installed_server_names()
for i = 1, #names do
    local dir = "~/.local/share/nvim/lsp_servers/".. tostring(pineapple(names[i])) 
    print(dir)
    require'lspconfig'[names[i]].setup
    {
        on_attach=on_attach,
       cmd={dir}
    }
end
end





