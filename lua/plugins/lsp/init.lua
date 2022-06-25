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
    'terraformls',
}

for _, lsp in pairs(servers) do
    local opts = {
        on_attach = on_attach,
        handlers = handlers,
        flags = {
            debounce_text_changes = 150,
        }
    }
    if lsp == "sumneko_lua" then
        table.insert(opts, { settings = require('plugins.lsp.settings.sumneko')["settings"] })
    end
    if lsp == "terraformls" then
        table.insert(opts, { cmd = {'terraform-ls', 'serve'}})
    end
    lspconfig[lsp].setup(opts)
end

