-- lua/user/lsp_servers/kotlin_ls.lua

local lspconfig = require("lspconfig")

-- Setup the Kotlin language server
lspconfig.kotlin_language_server.setup({
	cmd = { "kotlin-language-server" }, -- The command to start the server
	on_attach = function(client, bufnr)
		-- Key mappings for LSP functions
		local opts = { noremap = true, silent = true }
		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end

		buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
		buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
		buf_set_keymap("n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
	end,
	flags = {
		debounce_text_changes = 150,
	},
	settings = {
		kotlin = {
			linting = { enabled = true },
			completion = { enabled = true },
		},
	},
})
