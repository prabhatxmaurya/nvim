-- lua/user/snippets.lua
local ls = require('luasnip')

ls.add_snippets('lua', {
    ls.snippet('func', {
        ls.text_node('function '),
        ls.insert_node(1, 'name'),
        ls.text_node('('),
        ls.insert_node(2),
        ls.text_node(')'),
        ls.text_node(' '),
        ls.insert_node(0),
        ls.text_node('end'),
    }),
})

