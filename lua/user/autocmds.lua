-- lua/user/autocmds.lua

-- Configuration for markdown-preview.nvim
vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1

-- Enable formatting on save for multiple file types
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.java", "*.py", "*.js", "*.ts" },
	callback = function()
		vim.lsp.buf.format()
	end,
})
