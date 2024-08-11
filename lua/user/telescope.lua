-- lua/user/telescope.lua

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    layout_strategy = "horizontal", -- Set layout strategy to vertical
    layout_config = {
      vertical = {
        mirror = false,
        preview_height = 0.6,  -- Adjust this value for preview height
        prompt_position = "top",
        width = 0.75,          -- Adjust the width of the preview window
      },
      horizontal = {
        mirror = false,
        preview_width = 0.6,  -- Adjust this value for preview width
      },
    },
    sorting_strategy = "ascending",
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    file_ignore_patterns = {},
    generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = {
      '─', '│', '─', '│',
      '┼', '│', '┤', '│'
    },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' },
    mappings = {
      i = {
        ["<C-u>"] = false,
        ["<C-d>"] = actions.delete_buffer,
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
      },
      n = {
        ["<C-d>"] = actions.delete_buffer,
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
      },
    },
  }
}

-- Load fzf extension
require('telescope').load_extension('fzf')

