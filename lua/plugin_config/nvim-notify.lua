local packwrap = require("plugins/packwrap")

packwrap:AddPlugin("rcarriga/nvim-notify", function()
  vim.notify = require("notify")
end)
