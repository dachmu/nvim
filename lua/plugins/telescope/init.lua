-- Load telescope extensions
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('file_browser')

-- Lets Configure Telescope
local actions = require "telescope.actions"
local file_browser_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
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
        file_ignore_patterns = {},
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
vim.api.nvim_set_keymap( "n" ,"<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true})

-- Telescope file_browser binding
vim.api.nvim_set_keymap( "n" ,"<leader>fe", ":Telescope file_browser<CR>", {noremap = true})

