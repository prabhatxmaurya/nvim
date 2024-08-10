-- lua/user/telescope.lua

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
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
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil
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

