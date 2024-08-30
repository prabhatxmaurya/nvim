local opt = vim.opt

-- Line numbers
opt.number = true
--opt.relativenumber = true

-- Tabs and indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

-- Disable swapfile
opt.swapfile = false

-- Enable mouse support
opt.mouse = "a"

-- Enable clipboard access
opt.clipboard = "unnamedplus"

-- Case insensitive searching unless /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"

opt.scrolloff = 5 -- Set scrolloff to keep the line you're editing centered

-- Set scrolloff to keep the line you're editing centered
opt.scrolloff = 999 -- Adjust the value as needed

-- creates backup files
opt.backup = false

-- allows neovim to access the system clipboard
opt.clipboard = "unnamedplus"

-- more space in the neovim command line for displaying messages
opt.cmdheight = 2

-- highlight all matches on previous search pattern
opt.hlsearch = true

-- enable persistent undo
opt.undofile = true

-- faster completion (4000ms default)
opt.updatetime = 300

-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup = false

-- highlight the current Line
opt.cursorline = true

-- always show the sign column, otherwise it would shift the text each time
opt.signcolumn = "yes"

-- display lines as one long line
opt.wrap = true

-- companion to wrap, don't split words
opt.linebreak = true

-- minimal number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- minimal number of screen columns either side of cursor if wrap is `false`
opt.sidescrolloff = 8
