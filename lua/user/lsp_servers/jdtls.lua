local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.jdtls.setup({
	cmd = {
		"/home/prabhat/.local/share/nvim/mason/packages/jdtls/bin/jdtls",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1G",
		"-Xms100m",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		"/home/prabhat/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar",
		"-configuration",
		"/home/prabhat/.local/share/nvim/mason/packages/jdtls/config_linux",
		"-data",
		"/home/prabhat/.local/share/nvim/jdtls-workspace",
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
					-- Customize import order
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
