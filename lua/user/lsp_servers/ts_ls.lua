local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	on_attach = function(client, bufnr)
		-- Custom keymaps and commands for ts_ls
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
		documentFormatting = true,
		format = {
			enable = true,
			-- Enable formatting
			insertSpaceAfterCommaDelimeter = true,
			insertSpaceAfterSemicolon = true,
			insertSpaceBeforeAndAfterOperator = true,
			indentStyle = "smart",
			indentSize = 2,
			wrapLineLength = 120,
		},
	},
	completions = {
		enable = true,
	},
	diagnostics = {
		enable = true,
	},
})
