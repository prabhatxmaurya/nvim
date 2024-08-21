-- Load user configuration files
require('user.options')
require('user.keymaps')
require('user.cmp')
require('user.java')
require('user.autopairs')
require('user.telescope')
require('user.gruvbox')

-- Initialize packer.nvim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Let packer manage itself
    use 'wbthomason/packer.nvim'

    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- Load test plugin configuration
    require('user.test')(use)

    -- NERDTree plugin
    use 'preservim/nerdtree'

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Auto pairs
    use 'windwp/nvim-autopairs'

    -- LSP Configuration
    use 'neovim/nvim-lspconfig'


        use {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

        -- Telescope FZF native
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    use { "ellisonleao/gruvbox.nvim" }
    

end
)



