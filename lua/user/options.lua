-- :help options

vim.opt.backup = false

-- allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus"

--vim.opt.cmdheight = 2

-- mostly just for cmp
vim.opt.completeopt = { "menuone", "noselect" }

-- so that `` is visible in markdown files
vim.opt.conceallevel = 0 
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.showmode = true

-- always show tabs
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.termguicolors = true

-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 1000

vim.opt.undofile = true
vim.opt.updatetime = 300

-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.writebackup = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

-- set number column width to 2 {default 4}
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- the font used in graphical neovim applications
vim.opt.guifont = "monospace:h17"

