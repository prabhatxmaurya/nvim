require ('user.options')
require ('user.keymaps')
require ('user.telescope')
require('user.cmp')
require ('user.java')
require ('user.autopairs')
require ('user.colorscheme')
require ('user.markdown')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
     -- Load test plugin configuration
    require('user.test')(use)

    use 'wbthomason/packer.nvim' -- Let packer manage itself
    use { 'catppuccin/nvim', as = 'catppuccin' } -- Catppuccin color scheme
    -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'preservim/nerdtree'      -- NERDTree plugin
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig' -- LSP Configuration
    use 'windwp/nvim-autopairs'

	  -- Add Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

     -- Markdown preview plugin
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        ft = { 'markdown' }
    }

    -- Syntax highlighting for Markdown
    use { 'plasticboy/vim-markdown', ft = { 'markdown' } }

    -- Improved Markdown editing
    use {
        'preservim/vim-pencil',
        ft = { 'markdown' },
        config = function()
          vim.cmd('Pencil')
        end
    }

  -- Additional text objects for Markdown
  use { 'godlygeek/tabular', ft = { 'markdown' } }

end)
