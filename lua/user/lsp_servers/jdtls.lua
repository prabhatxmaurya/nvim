local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

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
