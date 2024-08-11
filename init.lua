-- Load user configuration files
require('user.options')
require('user.keymaps')
require('user.telescope')
require('user.cmp')
require('user.java')
require('user.autopairs')
require('user.colorscheme')
require('user.markdown')

-- Initialize packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Let packer manage itself
    use 'wbthomason/packer.nvim'

    -- Color scheme
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- NERDTree plugin
    use 'preservim/nerdtree'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- LSP Configuration
    use 'neovim/nvim-lspconfig'

    -- Auto pairs
    use 'windwp/nvim-autopairs'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Telescope FZF native
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- Markdown plugins
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        ft = { 'markdown' }
    }
    use { 'plasticboy/vim-markdown', ft = { 'markdown' } }
    use {
        'preservim/vim-pencil',
        ft = { 'markdown' },
        config = function()
            vim.cmd('Pencil')
        end
    }
    use { 'godlygeek/tabular', ft = { 'markdown' } }
end)

