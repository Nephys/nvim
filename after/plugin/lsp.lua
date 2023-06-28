local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
    'clangd'
})

-- Fix Undefined global 'vim'
lsp.configure('lua-language-server', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    local bind = vim.keymap.set

    bind("n", "gd", function() vim.lsp.buf.definition() end, opts)
    bind("n", "K", function() vim.lsp.buf.hover() end, opts)
    bind("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    bind("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    bind("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    bind("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    bind("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    bind("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    bind("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    bind("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.configure('clangd', {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders"
    },
    init_options = {
        usePlaceholders = true,
        completeUnimported = true,
        clangdFileStatus = true
    },
    flags = { debounce_text_changes = 150 }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

