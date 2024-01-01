return {
    -- Mason
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },

    -- Mason-LSPconfig
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'williamboman/mason.nvim'
        },
        config = function()
            require('mason-lspconfig').setup({
                -- NOTE: Do not forget to configure them with lspconfig bellow
                ensure_installed = {
                    'clangd', --[['autotools_ls', 'cmake',]]--
                    'lua_ls', 'marksman', 'jsonls',
                    'tsserver', 'html', 'cssls',
                    'yamlls', 'ltex'
                }
            })
        end
    },

    -- Nvim LSPconfig
    {
        'neovim/nvim-lspconfig',
        -- NOTE: Configuring the previously defined language servers
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            --[[lspconfig.autotools_ls.setup({})
            lspconfig.cmake.setup({})]]--
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.marksman.setup({
                capabilities = capabilities
            })
            lspconfig.jsonls.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.yamlls.setup({
                capabilities = capabilities
            })
            lspconfig.ltex.setup({
                capabilities = capabilities
            })
        end
    }
}
