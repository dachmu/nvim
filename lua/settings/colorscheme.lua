-- Configure here the color scheme of the editor

vim.o.termguicolors = true -- Makes terminal look pretty, if suported

-- Colorschemes:
--    zenwritten	    Zero hue and saturation version
--    neobones	        Inspired by neovim.io
--    vimbones	        Inspired by vim.org
--    rosebones	        Inspired by Rosé Pine
--    forestbones	    Inspired by Everforest
--    nordbones	        Inspired by Nord
--    tokyobones	    Inspired by Tokyo Night
--    seoulbones	    Inspired by Seoul256
--    duckbones	        Inspired by Spaceduck
--    zenburned	        Inspired by Zenburn
--    kanagawabones	    Inspired by Kanagawa
--    randombones	    Randomly pick from the collection.

local color_scheme = "rosebones"

local set_scheme = string.format("colorscheme %s", color_scheme)
local set_default_scheme = "colorscheme desert"

if pcall(vim.cmd, set_scheme) then
    -- ColorScheme loaded
else
    vim.cmd(set_default_scheme)
end
