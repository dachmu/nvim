-- Provides an installer for LSP servers
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
require('plugins.lsp.utils').setup()
local on_attach = require('plugins.lsp.utils').on_attach
local handlers = require('plugins.lsp.utils').handlers
local lspconfig = require("lspconfig")
local servers = { 
    'cmake',
    'ltex',
    'bashls',
    'dockerls',
    'eslint',
    'sumneko_lua',
    'zk',
    'cssls',
    'tsserver',
    'pyright',
    'html',
    'vimls',
    'yamlls',
    'ccls',
    'clangd',
}


for _, lsp in pairs(servers) do
    local settings = {}
    if lsp == "sumneko_lua" then
        settings = require('plugins.lsp.settings.sumneko')["settings"]
    end
    lspconfig[lsp].setup {
        on_attach = on_attach,
        handlers = handlers,
        settings = settings,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
        }
    }
end

