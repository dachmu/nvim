-- Configure here the color scheme of the editor

vim.o.termguicolors = true -- Makes terminal look pretty, if suported
if pcall(function() vim.cmd "colorscheme pink-moon" end) then
    -- ColorScheme loaded
else
    vim.cmd "colorscheme desert"
end
