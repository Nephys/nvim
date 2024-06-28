local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '125' })
  end
})

-- TODO, FIXME... highlighter
augroup('todo', { clear = true })
vim.api.nvim_set_hl(0, 'TodoHighlight', { ctermfg = 'Magenta', fg = '#CBA6F7' }) -- Highlight color
autocmd('Syntax', {
    group = 'todo',
    pattern = '*',
    callback = function()
        vim.fn.matchadd('TodoHighlight', [[\v\W\zs<(NOTE|INFO|IDEA|TODO|FIXME|CHANGED|BUG|HACK|TRICKY|DEPRECATED)>]])
    end
})
