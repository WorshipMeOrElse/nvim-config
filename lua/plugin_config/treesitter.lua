local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-treesitter/nvim-treesitter")

require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "svelte" },
  highlight = {
    enable = true
  } 
})

