-- lua/user/autopairs.lua
require('nvim-autopairs').setup{
  disable_filetype = { "TelescopePrompt", "vim" },
  check_ts = true,  -- Enable Treesitter integration
  ts_config = {
    lua = { "string" },  -- Disable auto-pairs inside Lua strings
    javascript = { "template_string" },
    java = false,  -- Disable Treesitter integration for Java
  },
  fast_wrap = {
    map = '<M-e>',  -- Trigger fast wrap with Alt+e
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
    offset = 0, -- Offset from pattern match
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey='Comment'
  },
}

