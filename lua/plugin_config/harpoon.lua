local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("ThePrimeagen/harpoon", function()
  vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)

  vim.keymap.set("n", "<leader>hl", require("harpoon.ui").nav_next)
  vim.keymap.set("n", "<leader>hh", require("harpoon.ui").nav_prev)

  vim.keymap.set("n", "<leader>hm", require("harpoon.ui").toggle_quick_menu)

  vim.keymap.set("n", "<leader>hm", require("harpoon.ui").toggle_quick_menu)

  for i = 1, 9 do
    vim.keymap.set("n", "<leader>h" .. i, function()
      require("harpoon.ui").nav_file(i)
    end)
  end

  require("harpoon").setup()
end)
