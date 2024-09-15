-- lua/user/files_utils.lua

local M = {}

function M.create_file(filename)
	local file = io.open(filename, "w")
	if file then
		file:close()
		print("File created: " .. filename)
	else
		print("Failed to create file: " .. filename)
	end
end

return M
