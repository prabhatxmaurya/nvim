-- lua/user/formatter.lua
local formatter = require('formatter')

formatter.setup({
    logging = false,
    filetype = {
        lua = {
            -- luaformatter is used for Lua
            function()
                return {
                    exe = "lua-format",
                    args = {"--no-keep-simple-control-blocks", "--indent-width=4", "--break-after-table-lb"},
                    stdin = true
                }
            end
        },
        python = {
            -- black is used for Python
            function()
                return {
                    exe = "black",
                    args = {"--quiet", "-"},
                    stdin = true
                }
            end
        },
        -- Add configurations for other filetypes as needed
    }
})

-- Automatically format on save
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*",
    callback = function()
        vim.cmd("Format")
    end,
})

