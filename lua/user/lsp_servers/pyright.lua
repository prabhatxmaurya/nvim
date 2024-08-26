local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
	on_attach = function(client, bufnr)
		-- Custom keymaps and commands for pyright
	end,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
})
