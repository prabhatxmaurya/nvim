-- init.lua or a separate file like lua/user/colorscheme.lua
require('catppuccin').setup {
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { 
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    term_colors = true,
    styles = {
        comments = { "italic" },
        functions = { "bold" },
        keywords = { "italic", "bold" },
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
        },
        lsp_trouble = false,
        cmp = true,
        gitsigns = true,
        telescope = true,
    }
}

-- Set the color scheme
vim.cmd [[colorscheme catppuccin]]

