local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("nvim-telescope/telescope.nvim", function()
  require("telescope").setup({
    pickers = {
      colorscheme = {
        enable_preview = true
      }
    },
  })

  local ivy_theme = require("telescope.themes").get_ivy({
    layout_config = {
      height = 10
    }
  })

  vim.keymap.set("n", "<leader>f", function()
    require("telescope.builtin").find_files(ivy_theme)
  end)
end)
