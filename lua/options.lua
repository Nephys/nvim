vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.signcolumn = 'yes'

vim.o.wrap = false
vim.o.relativenumber = true
vim.o.number = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.showmode = false
vim.opt.autoindent = true
vim.opt.cursorline = false
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.backspace = { 'start', 'eol', 'indent' }

vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Disable mouse clicks
vim.api.nvim_set_option('mouse', '')

-- Enable scrolling with the scroll wheel
vim.api.nvim_set_option('mousemodel', 'popup')
