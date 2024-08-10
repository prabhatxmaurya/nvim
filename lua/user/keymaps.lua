local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = ' '  -- Set Space as leader key

-- Save file
map('n', '<leader>w', ':w<CR>', default_opts)

-- Quit
map('n', '<leader>q', ':q<CR>', default_opts)

-- Close current buffer
map('n', '<leader>c', ':bd<CR>', default_opts)

-- Toggle NERDTree
map('n', '<leader>n', ':NERDTreeToggle<CR>', default_opts)

-- Move between windows
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Resize windows with arrow keys
map('n', '<C-Up>', ':resize -2<CR>', default_opts)
map('n', '<C-Down>', ':resize +2<CR>', default_opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', default_opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', default_opts)

-- Copy to system clipboard
map('v', '<leader>y', '"+y', default_opts)

-- Paste from system clipboard
map('n', '<leader>p', '"+p', default_opts)
map('v', '<leader>p', '"+p', default_opts)

-- Clear search highlighting
map('n', '<leader>/', ':nohlsearch<CR>', default_opts)


-- Telescope keybindings
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', default_opts) -- Find files
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', default_opts)  -- Live grep
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', default_opts)    -- List buffers
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', default_opts)  -- Help tags


-- Keymap for organizing imports
map('n', '<leader>oi', '<cmd>lua vim.lsp.buf.execute_command({ command = "java.organizeImports" })<CR>', default_opts)


-- Go to definition
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)

-- Go back to previous location
map('n', 'cb', '<C-o>', default_opts)  -- Map <leader>cb to go back

--test keybindings
map('n', 'tn', ':TestNearest<CR>', default_opts)
map('n', 'tf', ':TestFile<CR>', default_opts)
map('n', 'ts', ':TestSuite<CR>', default_opts)
map('n', 'tl', ':TestLast<CR>', default_opts)
map('n', 'tv', ':TestVisit<CR>', default_opts)


