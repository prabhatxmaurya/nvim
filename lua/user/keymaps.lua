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

--split
map('n', '<leader>v', ':vs<CR>', default_opts)
map('n', '<leader>h', ':sp<CR>', default_opts)

-- move to end of line
map('n', 'e', '$', default_opts)

-- move to the starting of lin
map('n', 's', '_', default_opts)


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

map('n', 'ca', ':lua vim.lsp.buf.code_action()<CR>', default_opts)

-- Toggle terminal
map('n', '<leader>t', ':lua ToggleTerm()<CR>', default_opts)

function ToggleTerm()
    -- Check if there's a terminal buffer already open
    local term_buf = vim.fn.bufnr('term://*')

    if term_buf == -1 then
        -- If not, open a new terminal
        vim.cmd('belowright split | terminal')
    else
        -- If yes, check if it's visible in any window
        local term_win = vim.fn.bufwinnr(term_buf)
        
        if term_win == -1 then
            -- If not, open it below in a split
            vim.cmd('belowright split | buffer ' .. term_buf)
        else
            -- If yes, close the terminal window
            vim.cmd(term_win .. 'close')
        end
    end
end

-- Key bindings for Markdown preview
vim.api.nvim_set_keymap('n', '<leader>mp', ':MarkdownPreview<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ms', ':MarkdownPreviewStop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>mf', ':MarkdownPreviewFollow<CR>', { noremap = true, silent = true })

-- Optional: Key binding to toggle Markdown preview
vim.api.nvim_set_keymap('n', '<leader>mt', ':call ToggleMarkdownPreview()<CR>', { noremap = true, silent = true })

-- Define function to toggle Markdown preview
vim.cmd([[
function! ToggleMarkdownPreview()
  if exists('g:mkdp_is_ready') && g:mkdp_is_ready
    if exists('g:mkdp_auto_start') && g:mkdp_auto_start == 1
      call markdown#preview#stop()
    else
      call markdown#preview#start()
    endif
  else
    call markdown#preview#start()
  endif
endfunction
]])


