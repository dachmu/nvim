-- Load telescope extensions
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('file_browser')

-- Lets Configure Telescope
local actions = require "telescope.actions"

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
        },
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                mirror = false,
            },
            vertical = {
                mirror = false,
            },
        },
        file_sorter =  require'telescope.sorters'.get_fzy_sorter,
        file_ignore_patterns = {
            ".git/",
            "node_modules",
            ".cache",
            "%.o",
            "%.a",
            "%.out",
            "%.class",
            "%.pdf",
            "%.mkv",
            "%.mp4",
            "%.zip",
            "%.rar",
        },
        generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        path_display = {},
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        },
        file_browser = {
            theme = "ivy",
            mappings = {
                i = {},
                n = {}
            }
        }
    },
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<c-d>"] = actions.delete_buffer + actions.move_to_top, -- Enables buffer closing from telescope
                }
            }
        }
    }
}


-- Telescope specific keybindings
vim.api.nvim_set_keymap( "n" ,"<leader>ff", ":Telescope find_files hidden=true<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fg", ":Telescope live_grep<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fb", ":Telescope buffers<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fh", ":Telescope help_tags<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fm", ":Telescope marks<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fq", ":Telescope quickfix<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fk", ":Telescope keymaps<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fs", ":Telescope spell_suggest<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fr", ":Telescope registers<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fa", ":Telescope autocommands<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>ft", ":Telescope treesitter<CR>", {noremap = true})


-- Telescope Git
vim.api.nvim_set_keymap( "n" ,"<leader>fgc", ":Telescope git_commits<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fgb", ":Telescope git_branches<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fgs", ":Telescope git_status<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fgt", ":Telescope git_stash<CR>", {noremap = true})

-- Telescope file_browser binding
vim.api.nvim_set_keymap( "n" ,"<leader>fe", ":Telescope file_browser<CR>", {noremap = true})

