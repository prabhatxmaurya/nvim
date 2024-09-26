require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"markdown",
		"markdown_inline",
		"lua",
		"python",
		"java",
		"c",
		"cpp",
		"javascript",
		"kotlin",
		"go",
	},
	highlight = {
		enable = true,
		use_language_tree = true,
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	rainbow = {
		enable = true,
	},
})
