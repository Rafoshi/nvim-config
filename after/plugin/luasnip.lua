local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("markdown", {
    s("todo", {
        t('- [ ] : ')
    })
})

ls.add_snippets("cs", {
    s("prop", {
        t('public '),
        i(1),
        t(' '),
        i(2),
        t(' { get; set; }'),
    })
})
