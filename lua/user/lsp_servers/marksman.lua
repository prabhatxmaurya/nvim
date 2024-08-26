local lspconfig = require("lspconfig")
-- Setup for Markdown LSP (Marksman)
lspconfig.marksman.setup({
	-- Add additional settings here
	filetypes = { "markdown", "md" },
})
