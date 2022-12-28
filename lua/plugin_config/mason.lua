local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("williamboman/mason.nvim", function()
  require("mason").setup()
end)

packwrap:AddPlugin("williamboman/mason-lspconfig.nvim", function()
  require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua" }
  })
end)

packwrap:AddPlugin("neovim/nvim-lspconfig", function()
  require("lspconfig").sumneko_lua.setup({
    cmd = { "C:\\Users\\user\\AppData\\Local\\nvim\\custom-dependencies\\robloxlsp\\server\\bin\\Windows\\lua-language-server" }
  })
end)

packwrap:AddPlugin("jayp0521/mason-null-ls.nvim", function()
  require("mason-null-ls").setup({
    ensure_installed = { "stylua", "selene" }
  })
end)

packwrap:AddPlugin("jose-elias-alvarez/null-ls.nvim", function()
  local null_ls = require("null-ls")

  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.selene
    }
  })
end)
