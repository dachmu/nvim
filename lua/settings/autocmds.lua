vim.api.nvim_exec(
    [[au FocusGained,BufEnter * :checktime]], false
)

local auto_write_group = vim.api.nvim_create_augroup("AutoWrite", { clear = true })
vim.api.nvim_create_autocmd("BufLeave", {
    callback = function()
        local bad_types = {nowrite=true, nofile=true, terminal=true, prompt=true}
        if not bad_types[vim.api.nvim_buf_get_option(0, 'buftype')] then
            vim.api.nvim_command(":w")
        end
    end,
    group = auto_write_group,
})
