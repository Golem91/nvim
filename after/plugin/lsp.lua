local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)

    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'pyright', 'clangd', 'omnisharp_mono', 'omnisharp', 'bashls', 'jsonls', 'lua_ls', 'lemminx', 'yamlls'},
    handlers = {
        lsp_zero.default_setup,
    },
})
