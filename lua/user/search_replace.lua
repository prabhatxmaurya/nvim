-- lua/user/search_replace.lua

local M = {}

function M.search_replace()
	-- Prompt for the old name
	local old_name = vim.fn.input("Old name: ")
	-- Prompt for the new name
	local new_name = vim.fn.input("New name: ")
	-- Execute the search and replace command
	vim.cmd(string.format("%%s/%s/%s/g", old_name, new_name))
end

return M
