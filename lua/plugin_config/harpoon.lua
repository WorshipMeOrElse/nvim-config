local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("ThePrimeagen/harpoon", function()
  vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)

  vim.keymap.set("n", "<leader>hl", require("harpoon.ui").nav_next)
  vim.keymap.set("n", "<leader>hh", require("harpoon.ui").nav_prev)

  require("harpoon").setup()
  require("telescope").load_extension("harpoon")
end)
