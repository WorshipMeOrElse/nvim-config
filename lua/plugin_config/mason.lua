require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua" }
})

require("mason-lspconfig").setup_handlers({
  function (server_name)
    if server_name == "sumneko_lua" then return end
    require("lspconfig")[server_name].setup({})
  end,

  ["sumneko_lua"] = function()
    require("lspconfig").sumneko_lua.setup({
      cmd = { vim.fn.stdpath("config") .. "\\custom-dependencies\\robloxlsp\\server\\bin\\Windows\\lua-language-server" }
    })
  end
})

require("mason-null-ls").setup({
  ensure_installed = { "stylua", "selene" },
  automatic_setup = true
})

require("null-ls").setup()
require("mason-null-ls").setup_handlers()
