-- This file contains all the keymappings
vim.g.mapleader = " "

-- Sets the dictionary for my working laguage
vim.keymap.set("n", "<F6>", ":setlocal spell! spelllang=en_us<CR>", { noremap = true })
vim.keymap.set("n", "<F7>", ":setlocal spell! spelllang=es<CR>", { noremap = true })
vim.keymap.set("n", "<F11>", ":setlocal spell!", { noremap = true })

-- Makes the Y behave like most capital letters
vim.keymap.set("n", "Y", "y$", { noremap = true })

-- Keeps the cursor centered while performing the operations
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })
vim.keymap.set("n", "J", "mzJ'z", { noremap = true })

-- Makes certain characters add more breakpoints, for undo, in insert mode
vim.keymap.set("i", ",", ",<c-g>u", { noremap = true })
vim.keymap.set("i", ".", ".<c-g>u", { noremap = true })
vim.keymap.set("i", ":", ":<c-g>u", { noremap = true })
vim.keymap.set("i", ";", ";<c-g>u", { noremap = true })

-- Can move lines up or down in vidual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- Moving between quickfixlist
vim.keymap.set("n", "<leader>j", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", ":cprev<CR>", { noremap = true, silent = true })

-- Moving between buffers
vim.keymap.set("n", "<A-Right>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-L>", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Left>", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-H>", ":bp<CR>", { noremap = true, silent = true })

-- Write Shortcut
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>a", { noremap = true })
vim.keymap.set("n", "<C-s>", "<ESC>:w<CR>", { noremap = true })

-- Formatting
vim.keymap.set("n", "<C-f>", ":Format<CR>", { noremap = true })

-- Vim Fugitive keymaps
vim.keymap.set("n", "<leader>ga", ":Gwrite<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gg", ":Git <CR>", { noremap = true })
vim.keymap.set("n", "<leader>gc", ":Git commit -m", { noremap = true })
vim.keymap.set("n", "<leader>gp", ":Git push <CR>", { noremap = true })

-- Launch preview only on md files
local glow_mappings_group = vim.api.nvim_create_augroup("GlowMappings", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() vim.api.nvim_buf_set_keymap(0, "n", "<leader>p", ":Glow<CR>", { noremap = true }) end,
    pattern = { "*.md" },
    group = glow_mappings_group,
})
