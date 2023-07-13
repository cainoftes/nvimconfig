local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "folke/tokyonight.nvim"
    }, 
    {
        "catppuccin/nvim",
        name = "catppuccin"
    },
    {
        "cocopon/iceberg.vim"
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true  }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        }
    },
    {
        "folke/which-key.nvim"
    }, 
    {
        "folke/neoconf.nvim",
        cmd = "Neoconf"
    }, 
    {
        "folke/neodev.nvim"
    },
    {
        "williamboman/mason.nvim", 
        "williamboman/mason-lspconfig.nvim", 
        "neovim/nvim-lspconfig",
        "hrsh7th/nvim-cmp", 
        "hrsh7th/cmp-nvim-lsp"
    }, 
    {
        'echasnovski/mini.nvim',
        version = '*'
    }, 
    {
        'xeluxee/competitest.nvim',
        dependencies = {'MunifTanjim/nui.nvim'}
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}
})
