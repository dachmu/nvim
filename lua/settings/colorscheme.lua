-- Configure here the color scheme of the editor

vim.o.termguicolors = true -- Makes terminal look pretty, if suported

local color_scheme = "nord"

local set_scheme = string.format("colorscheme %s", color_scheme)
local set_default_scheme = "colorscheme desert"

if pcall(vim.cmd, set_scheme) then
    -- ColorScheme loaded
else
    vim.cmd(set_default_scheme)
end
