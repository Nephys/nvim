return {
    {
        'm4xshen/hardtime.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim',
            'nvim-lua/plenary.nvim'
        },
        opts = {
            enabled = false,
            max_count = 15 -- Maximum count of repeated key presses allowed
        }
    }
}
