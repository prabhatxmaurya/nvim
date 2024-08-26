local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
	on_attach = function(client, bufnr)
		-- Custom keymaps and commands for tsserver
	end,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
	cmd = { "tsserver" },
	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
	settings = { documentFormatting = false },
})
