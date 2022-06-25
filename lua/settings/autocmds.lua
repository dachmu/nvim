vim.api.nvim_exec(
    [[au FocusGained,BufEnter * :checktime]], false
)


-- Make sure to write changes when switching buffers
local auto_write_group = vim.api.nvim_create_augroup("AutoWrite", { clear = true })
vim.api.nvim_create_autocmd("BufLeave", {
    callback = function()
        local bad_types = {nowrite=true, nofile=true, terminal=true, prompt=true, readonly=true}
        if not (bad_types[vim.api.nvim_buf_get_option(0, 'buftype')] or vim.api.nvim_buf_get_option(0, 'readonly')) then
            vim.api.nvim_command(":w")
        end
    end,
    group = auto_write_group,
})
