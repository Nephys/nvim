-- Wipe all the registers
vim.api.nvim_create_user_command(
    'WipeRegs',
    function()
        local registers = {'"', '-', '#', '=', '/', '*', '+', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
        for _, reg in pairs(registers) do
            vim.fn.setreg(reg, {})
        end
    end,
    { nargs = 0 }
)

-- Wipe a specific register
vim.api.nvim_create_user_command(
    'WipeReg',
    function(opts)
        vim.fn.setreg(opts.args, {})
    end,
    { nargs = 1 }
)
