vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

-- 行号
vim.opt.relativenumber = true
vim.opt.number = true

-- 缩进
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- 防止包裹
vim.opt.wrap = false

-- 光标行
vim.opt.cursorline = true

-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "90"

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- 启用鼠标
vim.opt.mouse:append("a")

-- 系统剪贴板
vim.opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 搜索
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- leader
vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 外观
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- 自动保存
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        vim.fn.execute("write")
        vim.notify("Autosaved!", vim.log.levels.INFO, {})
    end,
})