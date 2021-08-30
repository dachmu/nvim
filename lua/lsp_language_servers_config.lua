-- LSP language servers configuration

require'lspconfig'.dockerls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.pylsp.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.yamlls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}

local home_dir = os.getenv("HOME")

-- Setting up lua language server, Sumeko-chan is a bit needier than most
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation
local sumneko_root_path = home_dir .. '/bin/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path,
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
            globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
    on_attach=require'completion'.on_attach

}


-- Setting up some auto complete configs
vim.g.completion_enable_auto_popup = 0

vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess  = vim.o.shortmess .. "c"

vim.api.nvim_set_keymap( "i", "<Tab>", "pumvisible() ? \"<C-n>\" : \"<Tab>\"", {noremap = true, expr = true})
vim.api.nvim_set_keymap( "i", "<S-Tab>", "pumvisible() ? \"<C-p>\" : \"<S-Tab>\"", {noremap = true, expr = true})

vim.api.nvim_command(":imap <tab> <Plug>(completion_smart_tab)")
vim.api.nvim_command(":imap <s-tab> <Plug>(completion_smart_s_tab)")
