require ('user.options')
require ('user.keymaps')
require ('user.telescope')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer manage itself
  use 'preservim/nerdtree' -- Add NERDTree plugin

	  -- Add Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Add other plugins here
end)
