local ls = require("luasnip")
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("lua", {
  ls.snippet("md",
    fmt([[
    local <> = {}
    
    function <>:<>(<>)
      <>
    end

    return <>
    ]], {
      i(1, "module"), rep(1), i(2), i(3), i(0), rep(1)
    }, {
      delimiters = "<>"
    })
  )
})
