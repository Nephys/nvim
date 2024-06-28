return {
    'folke/trouble.nvim',
    opts = {
        warn_no_results = false, -- show a warning when there are no results
        open_no_results = true, -- open the trouble window when there are no results
    }, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
        {
            '<C-t><C-t>',
            '<cmd>Trouble diagnostics toggle<cr>',
            desc = 'Diagnostics (Trouble)',
        }
    }
}
