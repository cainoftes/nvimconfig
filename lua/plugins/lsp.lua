require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.clangd.setup{}


require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

require('mini.pairs').setup()