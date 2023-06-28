vim.g.mapleader = " "
local bind = vim.keymap.set

-- Move visual selection up/down
bind('v', 'J', ":m '>+1<CR>gv=gv")
bind('v', 'K', ":m '<-2<CR>gv=gv")

bind('n', '<leader>w', '<cmd>w<cr>')            -- Save current file
bind('n', '<leader>wa', '<cmd>wa<cr>')            -- Save current file
bind('n', '<leader>e', '<cmd>Explore<cr>')      -- Open explorer

-- Center half page jumps
bind('n', '<C-d>', '<C-d>zz')
bind('n', '<C-u>', '<C-u>zz')

bind('n', 'Q', '<nop>')
