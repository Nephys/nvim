-- install/verify plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load options
require('options')
require('autocmd')

-- Install/Verify plugins
require("lazy").setup("plugins")

-- Load keybinds (after plugins to also configure plugin specific keybinds)
require('keybinds')

-- Custom commands
require('commands')

-- Small welcome message on startup
vim.api.nvim_echo({{'welcome back ' .. vim.env.USER, 'None'}}, false, {})
