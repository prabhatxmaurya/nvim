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
        if client.server_capabilities.documentFormattingProvider then
            local lsp_format_group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = lsp_format_group,
                buffer = bufnr,
                callback = function()
                    local view = vim.fn.winsaveview()
                    vim.lsp.buf.format({ async = false })
                    vim.fn.winrestview(view)
                end,
            })
        end
    end,
})
