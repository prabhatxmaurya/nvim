-- lua/user/markdown.lua

-- Enable spell checking for Markdown files
vim.api.nvim_exec([[
  autocmd FileType markdown setlocal spell
]], false)

-- Set wrap for Markdown files
vim.api.nvim_exec([[
  autocmd FileType markdown setlocal wrap
]], false)

-- Configure markdown-preview.nvim
vim.g.mkdp_auto_start = 1  -- Automatically start preview when opening a Markdown file
vim.g.mkdp_auto_close = 1  -- Auto close preview when exiting a buffer

-- Keybinding for toggling Markdown preview
vim.api.nvim_set_keymap('n', '<leader>mp', ':MarkdownPreviewToggle<CR>', { noremap = true, silent = true })

