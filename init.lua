require ('user.options')
require ('user.keymaps')
require ('user.telescope')
require('user.cmp')
require ('user.java')
require ('user.autopairs')
require ('user.formatter')
require ('user.colorscheme')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer manage itself
  -- use 'morhetz/gruvbox'  -- Example: Gruvbox color schemese 
  use { 'catppuccin/nvim', as = 'catppuccin' } -- Catppuccin color scheme

	  -- Add Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
   use 'preservim/nerdtree'      -- NERDTree plugin
use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig' -- LSP Configuration
  -- Add other plugins here

   -- Completion framework
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use 'windwp/nvim-autopairs'

     -- Load test plugin configuration
    require('user.test')(use)

    use 'mhartington/formatter.nvim' -- autoformat

end)
