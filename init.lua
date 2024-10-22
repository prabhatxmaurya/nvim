-- Load user configuration files
require("user.options")
require("user.keymaps")
require("user.cmp")
require("user.java")
require("user.autopairs")
require("user.telescope")
require("user.gruvbox")
require("user.lsp")
require("user.java")
require("user.treesitter")
require("user.null-ls") -- Load null-ls configuration
require("user.terminal")
require("user.markdown")
require("user.autocmds")
require("user.files_utils")
require("user.commands")

return require("packer").startup(function(use)
	-- Let packer manage itself
	use("wbthomason/packer.nvim")

	-- Completion framework
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")

	-- Load test plugin configuration
	require("user.test")(use)

	-- NERDTree plugin
	use("preservim/nerdtree")

	-- Plugin for integrating formatters/linters
	use("jose-elias-alvarez/null-ls.nvim")

	-- TS Server
	use("jose-elias-alvarez/nvim-lsp-ts-utils")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- Auto pairs
	use("windwp/nvim-autopairs")

	-- LSP Configuration
	use("neovim/nvim-lspconfig")

	-- Java Language Server support
	use("mfussenegger/nvim-jdtls")

	-- Markdown Preview (optional)
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Telescope FZF native
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	})

	use({ "ellisonleao/gruvbox.nvim" })

	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	})

	-- Mason LSPConfig for integrating Mason with nvim-lspconfig
	use({
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"pyright",
					"ts_ls",
					"jdtls",
					"marksman",
					"kotlin_language_server",
				},
			})
		end,
	})
end)
