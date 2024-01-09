local bind = vim.keymap.set

-- Move cursor in insert mode
bind('i', '<C-h>', '<C-O>h')
bind('i', '<C-j>', '<C-O>j')
bind('i', '<C-k>', '<C-O>k')
bind('i', '<C-l>', '<C-O>l')

-- Move visual selection up/down
bind('v', 'J', ":m '>+1<CR>gv=gv")
bind('v', 'K', ":m '<-2<CR>gv=gv")

bind('n', '<leader>w', '<cmd>w<cr>')                        -- Save current file
bind('n', '<leader>wa', '<cmd>wa<cr>')                      -- Save current file
bind('n', '<leader>e', '<cmd>Explore<cr>')                  -- Open explorer

bind('n', '<leader>vs', '<cmd>vsplit<cr><cmd>Explore<cr>')       -- Vertical split
bind('n', '<leader>hs', '<cmd>split<cr><cmd>Explore<cr>')        -- Horizontal split

-- Center half page jumps
bind('n', '<C-d>', '<C-d>zz')
bind('n', '<C-u>', '<C-u>zz')

bind('n', 'Q', '<nop>')                                     -- Stinky, me no like, this goes away >:(
bind('n', '<C-z>', '<nop>')

----- PLUGINS -----

-- Telescope
bind('n', '<leader>ff', require('telescope.builtin').find_files, {})
bind('n', '<leader>fg', require('telescope.builtin').live_grep, {})

-- Undotree
bind('n', '<leader>u', vim.cmd.UndotreeToggle, {})

-- LSP
bind('n', 'K', vim.lsp.buf.hover, {})
bind('n', '<leader>gD', vim.lsp.buf.declaration, {})
bind('n', '<leader>gd', vim.lsp.buf.definition, {})
bind('n', '<leader>ca', vim.lsp.buf.code_action, {})
bind('n', '<leader>rn', vim.lsp.buf.rename, {})

----- PLUGINS -----
