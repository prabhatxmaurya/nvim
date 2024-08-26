-- File: lua/user/null-ls.lua

local null_ls = require("null-ls")

-- Define builtins for formatting
local formatting = null_ls.builtins.formatting

-- Configure null-ls
local sources = {
	formatting.prettier, -- Use prettier for formatting (JavaScript, TypeScript, etc.)
	formatting.black, -- Use black for Python formatting
	formatting.stylua, -- Use stylua for Lua formatting
	formatting.google_java_format.with({
		command = "java",
		args = { "-jar", "/home/prabhat/.config/nvim/jars/google-java-format.jar", "-" },
		extra_args = { "--aosp" }, -- optional: use AOSP style formatting
		--command = "google-java-format", -- specify command if not in PATH
	}),
	-- Add other formatters based on your needs
}

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		-- Check client capabilities and set up formatting
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd([[
                augroup LspFormatting
                    autocmd! * <buffer>
                    autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
                augroup END
            ]])
		end
	end,
})
