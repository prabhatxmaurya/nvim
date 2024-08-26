-- Define the ToggleTerm function globally
function _G.ToggleTerm()
	-- Check if there is a terminal buffer open
	local term_buf = nil
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
			term_buf = buf
			break
		end
	end

	if term_buf then
		-- If terminal buffer is open, find its window
		local term_win = vim.fn.bufwinnr(term_buf)
		if term_win ~= -1 then
			-- If terminal window is open, close it
			vim.cmd(term_win .. "close")
		else
			-- If terminal buffer exists but window is not open, open it in a split
			vim.cmd("belowright split | buffer " .. term_buf)
		end
	else
		-- No terminal buffer found, open a new one
		vim.cmd("belowright split | terminal")
	end
end
