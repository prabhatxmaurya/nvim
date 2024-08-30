-- lua/user/autocmds.lua

-- Automatically add package declaration for new Java files
vim.cmd([[
    augroup java_auto_package
        autocmd!
        autocmd BufNewFile *.java execute 'normal i' . 'package ' . substitute(expand('%:h'), '/', '.', 'g') . ';\n\n'
    augroup END
]])

-- Initialize packer.nvim
vim.cmd([[packadd packer.nvim]])

-- Configuration for markdown-preview.nvim
vim.cmd([[
  let g:mkdp_auto_start = 1
  let g:mkdp_auto_close = 1
]])

-- Enable formatting on save

vim.cmd([[
  autocmd BufWritePre *.java lua vim.lsp.buf.format()
]])
