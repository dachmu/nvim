-- Load Plugins and Configuration
require('plugins.packer')
require('settings.nvim-preferences')
require('keymaps')
require('settings.colorscheme')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.cmp')
require('plugins.lsp')
require('plugins.lightbulb')
require('plugins.lsp.signature')
require("plugins.lualine")
require("plugins.tabline")
require("plugins.vimwiki")
--require("markdown_preview_config")
--require("git_super_push")

vim.api.nvim_exec(
    [[au FocusGained,BufEnter * :checktime]], false
)
