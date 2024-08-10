local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs and indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

-- Disable swapfile
opt.swapfile = false

-- Enable mouse support
opt.mouse = 'a'

-- Enable clipboard access
opt.clipboard = 'unnamedplus'

-- Case insensitive searching unless /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.background = 'dark'

opt.scrolloff = 5 -- Set scrolloff to keep the line you're editing centered

-- Set scrolloff to keep the line you're editing centered
opt.scrolloff = 999  -- Adjust the value as needed

-- Add more options as needed

