-- This file contains all the keymappings

vim.g.mapleader = " "

vim.api.nvim_set_keymap( "n" ,"<F6>", ":setlocal spell! spelllang=en_us<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<F7>", ":setlocal spell! spelllang=es<CR>", {noremap = true})
vim.api.nvim_set_keymap( "n" ,"<F11>", ":setlocal spell!", {noremap = true})
