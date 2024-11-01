local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local search_replace = require("user.search_replace")

-- Leader key
vim.g.mapleader = " " -- Set Space as leader key

-- Save file
map("n", "<leader>w", ":w<CR>", default_opts)

-- Quit
map("n", "<leader>q", ":q<CR>", default_opts)

-- Close current buffer
map("n", "<leader>c", ":bd<CR>", default_opts)

-- save all buffers and close all but this one
map("n", "<leader>bc", ":%bufdo w|%bd|e#<CR>", default_opts)

-- Toggle NERDTree
map("n", "<leader>n", ":NERDTreeToggle<CR>", default_opts)

--split
map("n", "<leader>v", ":vs<CR>", default_opts)
map("n", "<leader>h", ":sp<CR>", default_opts)

-- move to end of line
map("n", "e", "$", default_opts)

-- move to the starting of lin
map("n", "s", "_", default_opts)

-- Move between windows
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-- Resize windows with arrow keys
map("n", "<C-Up>", ":resize -2<CR>", default_opts)
map("n", "<C-Down>", ":resize +2<CR>", default_opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)

-- Copy to system clipboard
map("v", "<leader>y", '"+y', default_opts)

-- Paste from system clipboard
map("n", "<leader>p", '"+p', default_opts)
map("v", "<leader>p", '"+p', default_opts)

-- Clear search highlighting
map("n", "<leader>/", ":nohlsearch<CR>", default_opts)

-- Telescope keybindings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", default_opts) -- Find files
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", default_opts) -- Live grep
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", default_opts) -- List buffers
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", default_opts) -- Help tags

-- Keymap to invoke the LSP rename function
map("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

-- Go to definition
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", default_opts)

-- Go back to previous location
map("n", "cb", "<C-o>", default_opts) -- Map <leader>cb to go back

-- move forwaed to the location from which go back is triggered
map("n", "cf", "<C-i>", default_opts)

--test keybindings
map("n", "tn", ":TestNearest<CR>", default_opts)
map("n", "tf", ":TestFile<CR>", default_opts)
map("n", "ts", ":TestSuite<CR>", default_opts)
map("n", "tl", ":TestLast<CR>", default_opts)
map("n", "tv", ":TestVisit<CR>", default_opts)

-- code_action
map("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", default_opts)

-- Toggle terminal
map("n", "<leader>t", ":lua ToggleTerm()<CR>", default_opts)
-- Close terminal with <leader>t while in terminal mode
map("t", "<leader>t", "<C-\\><C-n>:lua ToggleTerm()<CR>", { noremap = true, silent = true })

-- Key bindings for Markdown preview
map("n", "<leader>mp", ":MarkdownPreview<CR>", { noremap = true, silent = true })
map("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
map("n", "<leader>mf", ":MarkdownPreviewFollow<CR>", { noremap = true, silent = true })

-- Optional: Key binding to toggle Markdown preview
map("n", "<leader>mt", ":call ToggleMarkdownPreview()<CR>", { noremap = true, silent = true })

-- java at key binding
map("n", "<leader>jf", ":lua vim.lsp.buf.at()<CR>", { noremap = true, silent = true })

-- search and replace function
map("n", "<leader>sr", ':lua require("user.search_replace").search_replace()<CR>', { noremap = true, silent = true })

-- Key mapping to trigger LSP rename
vim.api.nvim_set_keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })

-- In init.lua or lua/user/keymaps.lua
vim.api.nvim_set_keymap(
	"n",
	"<Leader>cf",
	":lua require('user.files_utils').create_file('NewFile.java')<CR>",
	{ noremap = true, silent = true }
)

map("n", "<leader>d", ":lua vim.lsp.buf.hover()<CR>", { silent = true })



