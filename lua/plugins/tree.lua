require("nvim-tree").setup({
    view = {
        width = 20,
    },
})

vim.api.nvim_set_keymap('n', '<Leader><Leader>t', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader><Leader>f', ':NvimTreeFocus<CR>', {noremap = true})