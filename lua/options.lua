vim.g.mapleader = " "

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.signcolumn = 'yes'

vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.showmode = false
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

-- Undotree persistance
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Disable mouse clicks
vim.api.nvim_set_option('mouse', '')

-- Enable scrolling with the scroll wheel
vim.api.nvim_set_option('mousemodel', 'popup')
