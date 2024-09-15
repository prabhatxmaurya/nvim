-- lua/user/commands.lua

-- Define user command for file creation
vim.api.nvim_create_user_command("CreateFile", function(opts)
	local filename = opts.args
	if filename and filename ~= "" then
		require("user.files_utils").create_file(filename)
	else
		print("Please provide a filename.")
	end
end, { nargs = 1, complete = "file" })
