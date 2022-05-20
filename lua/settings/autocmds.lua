vim.api.nvim_exec(
    [[au FocusGained,BufEnter * :checktime]], false
)
