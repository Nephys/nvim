local bind = vim.keymap.set

-- Move visual selection up/down
bind('v', 'J', ":m '>+1<CR>gv=gv")
bind('v', 'K', ":m '<-2<CR>gv=gv")

bind('n', '<leader>w', '<cmd>w<cr>')            -- Save current file
bind('n', '<leader>wa', '<cmd>wa<cr>')          -- Save current file
bind('n', '<leader>e', '<cmd>Explore<cr>')      -- Open explorer

-- Center half page jumps
bind('n', '<C-d>', '<C-d>zz')
bind('n', '<C-u>', '<C-u>zz')

bind('n', 'Q', '<nop>')
bind('n', '<C-z>', '<nop>')

bind('n', '<leader>h', '<cmd>nohlsearch<cr>')

----- PLUGINS -----

-- Telescope
bind('n', '<leader>ff', require('telescope.builtin').find_files, {})
bind('n', '<leader>fg', require('telescope.builtin').live_grep, {})

-- LSP
bind('n', 'K', vim.lsp.buf.hover, {})
bind('n', '<leader>gD', vim.lsp.buf.declaration, {})
bind('n', '<leader>gd', vim.lsp.buf.definition, {})
bind('n', '<leader>ca', vim.lsp.buf.code_action, {})
bind('n', '<leader>rn', vim.lsp.buf.rename, {})

----- PLUGINS -----
