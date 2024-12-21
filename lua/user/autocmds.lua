-- lua/user/autocmds.lua
-- Configuration for markdown-preview.nvim

vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1

-- Enable formatting on save for multiple file types
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = "*", -- Apply this to all filetypes
    callback = function()
        -- save current position
        local pos = vim.api.nvim_win_get_cursor(0)

        -- strip trailing whitespace (essentially this strips comments that are at the end of lines)
        vim.cmd([[%s/\s\+$//e]])

        -- restore cursor position
        vim.api.nvim_win_set_cursor(0, pos)
    end
})
