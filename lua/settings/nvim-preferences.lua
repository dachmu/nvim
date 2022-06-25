-- Nvim basic settings

vim.cmd "syntax enable"
vim.cmd "filetype plugin indent on"

-- Setting indentation defaults
local tab_size = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = tab_size
vim.opt.softtabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.autowrite = true -- Automatically saves on most ocations

vim.bo.fileformat = "unix" -- Makes sure to use unix format files
vim.o.ignorecase = true -- Makes default searches case insesitive
vim.o.smartcase = true -- When searching, vim will be case insensitive if the search start in lowercase, and case sensitive otherwise.
vim.o.scrolloff = 8  -- Keeps the cursor centered when moving throught the document

vim.o.splitbelow = true  -- Makes default vertical split to go down
vim.o.splitright = true  -- Makes default side split window to the right

vim.o.showcmd = true -- Shows the commands being executed in normal mode

vim.wo.number = true -- Turns on left side line numeration
vim.wo.relativenumber = true -- Turns on distance line numeration

vim.wo.conceallevel = 0 -- Prevents vim from hidding some stuff
vim.o.path = vim.o.path .. "**" -- Allows search down into subfolders

vim.o.wildmenu = true -- Display all matching files when tab complete
vim.o.wildmode = "list:longest" -- Changes completition settings

vim.o.termguicolors = true -- Makes terminal look pretty, if suported
vim.o.hidden = true -- Leave buffers open
