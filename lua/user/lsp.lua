-- lua/user/lsp.lua
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Example for Python LSP (pyright)
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

lspconfig.tsserver.setup({
	on_attach = function(client, bufnr)
		-- Custom keymaps and commands for tsserver
	end,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
	cmd = { "tsserver" },
	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
	settings = { documentFormatting = false },
})
-- You can configure other language servers similarly
-- lspconfig.tsserver.setup{}
-- lspconfig.sumneko_lua.setup{}
-- Ensure that nvim-cmp is loaded
--
lspconfig.jdtls.setup({
	cmd = {
		"/home/prabhat/.local/share/nvim/mason/packages/jdtls/bin/jdtls",
	},
	capabilities = capabilities,
	root_dir = function()
		return vim.fs.dirname(
			vim.fs.find({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }, { upward = true })[1]
		)
	end,
	settings = {
		java = {
			completion = {
				favoriteStaticMembers = {
					"org.junit.jupiter.api.Assertions.*",
					"org.mockito.Mockito.*",
					"java.util.Objects.requireNonNull",
					"java.util.Objects.requireNonNullElse",
				},
				filteredTypes = {
					"com.sun.*",
					"io.micrometer.shaded.*",
					"java.awt.*",
					"jdk.*",
					"sun.*",
				},
			},
			import = {
				exclusions = {
					"**/internal/**",
				},
				maven = {
					enabled = true,
					downloadSources = true,
				},
				gradle = {
					enabled = true,
				},
				settings = {
					importOrder = {
						"java",
						"javax",
						"org",
						"com",
					},
				},
			},
		},
	},
})

-- Setup for Markdown LSP (Marksman)
lspconfig.marksman.setup({
	-- Add additional settings here
	filetypes = { "markdown", "md" },
})
