return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            local cfg = require('nvim-treesitter.configs')
            cfg.setup({
                ensure_installed = {
                    'c', 'cpp', 'make',
                    'cmake', 'lua', 'vim',
                    'markdown', 'json', 'regex',
                    'javascript', 'html', 'css',
                    'scss', 'yaml'
                },
                auto_install = true,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true }
            })
        end
    }
}
