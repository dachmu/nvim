vim.g.open_browser = require("open_browser")

vim.g.mkdppath_to_chrome = ""
-- Path to the chrome or the command to open chrome (or other modern browsers).
-- If set, g:mkdp_browserfunc would be ignored.

vim.g.mkdp_browserfunc = 'g:open_browser'
-- 'MKDP_browserfunc_default'
-- Callback Vim function to open browser, the only parameter is the url to open.

vim.g.mkdp_auto_start = 0
-- Set to 1, Vim will open the preview window on entering the Markdown
-- buffer.

vim.g.mkdp_auto_open = 0
-- Set to 1, Vim will automatically open the preview window when you edit a
-- Markdown file.

vim.g.mkdp_auto_close = 1
-- Set to 1, Vim will automatically close the current preview window when
-- switching from one Markdown buffer to another.

vim.g.mkdp_refresh_slow = 0
-- Set to 1, Vim will just refresh Markdown when saving the buffer or
-- leaving from insert mode. With default 0, it will automatically refresh
-- Markdown as you edit or move the cursor.

vim.g.mkdp_command_for_global = 0
-- Set to 1, the MarkdownPreview command can be used for all files,
-- by default it can only be used in Markdown files.

vim.g.mkdp_open_to_the_world = 0
-- Set to 1, the preview server will be available to others in your network.
-- By default, the server only listens on localhost (127.0.0.1)._

vim.api.nvim_set_keymap( "n" ,"<F8>", ":MarkdownPreview<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "i" ,"<F8>", "<ESC>:MarkdownPreview<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n" ,"<F9>", ":MarkdownPreviewStop<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "i" ,"<F9>", "<ESC>:MarkdownPreviewStop<CR>", {noremap = true, silent = true})
