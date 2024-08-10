-- lua/user/lsp.lua
local lspconfig = require('lspconfig')

-- Example for Python LSP (pyright)
lspconfig.pyright.setup {
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
}

lspconfig.tsserver.setup {
    on_attach = function(client, bufnr)
        -- Custom keymaps and commands for tsserver
    end,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
    cmd = { "tsserver" },
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    settings = { documentFormatting = false },
}
-- You can configure other language servers similarly
-- lspconfig.tsserver.setup{}
-- lspconfig.sumneko_lua.setup{}
-- Ensure that nvim-cmp is loaded
