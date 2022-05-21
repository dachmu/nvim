-- Settings for lualine
local status, lualine = pcall(require, "lualine")
if (not status) then return end

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local spaces = function()
    return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'palenight',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = { 'packer', 'NvimTree' }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = { {
        "branch",
        icons_enabled = true,
        icon = "",
    }
 },
    lualine_c = {
        'filename',
        { 'diagnostics',
                sources = {"nvim_lsp"},
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
                always_visible = true
        },
    },
    lualine_x = {
        'diff',
        spaces,
        'encoding',
        'filetype',
    },
    lualine_y = { 'progress', progress },
    lualine_z = { { 'location', padding = 0} }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
