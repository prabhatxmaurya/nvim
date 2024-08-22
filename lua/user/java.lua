-- ~/.config/nvim/lua/user/java.lua

-- Additional Java-specific configurations can go here

-- For example, setting up Java-specific keybindings:
vim.api.nvim_set_keymap('n', '<leader>oi', '<cmd>lua vim.lsp.buf.organize_imports()<CR>', { noremap = true, silent = true })

