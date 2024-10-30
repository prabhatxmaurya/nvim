
-- ~/.config/nvim/lua/user/comment.lua
local status_ok, comment = pcall(require, 'Comment')
if not status_ok then
    vim.notify('Comment.nvim not found!')
    return
end

require('Comment').setup {
    toggler = {
        line = '<C-/>',   -- Mapping for toggling comments
        block = '<C-S-/>', -- Mapping for block comments
    },
    opleader = {
        line = '<C-/>',   -- Mapping for operator-pending comments
        block = '<C-S-/>', -- Mapping for block comments in operator-pending mode
    },
}
