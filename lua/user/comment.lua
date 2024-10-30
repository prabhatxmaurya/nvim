-- ~/.config/nvim/lua/user/comment.lua
local status_ok, comment = pcall(require, "Comment")
if not status_ok then
	vim.notify("Comment.nvim not found!")
	return
end

require("Comment").setup({
	toggler = {
		line = "<leader>k", -- Mapping for toggling comments
		block = "<leader>b", -- Mapping for block comments
	},
	opleader = {
		line = "<leader>k", -- Mapping for operator-pending comments
		block = "<leader>b", -- Mapping for block comments in operator-pending mode
	},
})
