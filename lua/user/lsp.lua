-- Load language server configuration
require("user.lsp_servers.pyright")
require("user.lsp_servers.ts_ls")
require("user.lsp_servers.jdtls")
require("user.lsp_servers.marksman")
require("user.lsp_servers.kotlin_ls")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "pyright", "ts_ls", "jdtls", "marksman", "kotlin_language_server" }, -- Ensure Kotlin LSP is installed
})
