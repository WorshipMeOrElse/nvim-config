local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close
      }
    }
  },

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
