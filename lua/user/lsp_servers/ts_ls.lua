local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	on_attach = function(client, bufnr)
		-- Custom keymaps and commands for tsserver
		local opts = { noremap = true, silent = true }
		-- Example key mappings
		vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
	end,
	filetypes = {
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"javascript",
		"javascriptreact",
		"javascript.jsx",
	},
	cmd = { "typescript-language-server", "--stdio" },
	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
	settings = {
		-- Enable document formatting
		format = {
			enable = true,
			insertSpaceAfterCommaDelimiter = true,
			insertSpaceAfterSemicolon = true,
			insertSpaceBeforeAndAfterOperator = true,
			indentStyle = "smart",
			indentSize = 2,
			wrapLineLength = 120,
		},
		-- Diagnostics and completion settings
		diagnostics = {
			enable = true,
		},
		completions = {
			enable = true,
		},
	},
})
