-- This file contains all the keymappings


vim.g.mapleader = " "

-- Sets the dictionary for my working laguage
vim.api.nvim_set_keymap("n", "<F6>", ":setlocal spell! spelllang=en_us<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F7>", ":setlocal spell! spelllang=es<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<F11>", ":setlocal spell!", { noremap = true })

-- Makes the Y behave like most capital letters
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

-- Keeps the cursor centered while performing the operations
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true })
vim.api.nvim_set_keymap("n", "J", "mzJ'z", { noremap = true })

-- Makes certain characters add more breakpoints, for undo, in insert mode
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ":", ":<c-g>u", { noremap = true })
vim.api.nvim_set_keymap("i", ";", ";<c-g>u", { noremap = true })

-- Adding some Fancy moving
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<esc>:m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<esc>:m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>j", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>k", ":m .-2<CR>==", { noremap = true })

-- Moving between quickfixlist
vim.api.nvim_set_keymap("n", "<leader>j", ":cnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", ":cprev<CR>", { noremap = true, silent = true })

-- Moving between buffers
vim.api.nvim_set_keymap("n", "<A-Right>", ":bn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Left>", ":bp<CR>", { noremap = true, silent = true })

-- Write Shortcut
vim.api.nvim_set_keymap("i", "<C-s>", "<ESC>:w<CR>a", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-s>", "<ESC>:w<CR>", { noremap = true })

-- Formatting
vim.api.nvim_set_keymap("n", "<C-f>", ":Format<CR>", { noremap = true })

-- Vim Fugitive keymaps
vim.api.nvim_set_keymap("n", "<leader>ga", ":Gwrite<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gg", ":Git <CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit -m", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push <CR>", { noremap = true })

-- Launch preview only on md files
local glow_mappings_group = vim.api.nvim_create_augroup("GlowMappings", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() vim.api.nvim_buf_set_keymap(0, "n", "<leader>p", ":Glow<CR>", { noremap = true }) end,
    pattern = { "*.md" },
    group = glow_mappings_group,
})
