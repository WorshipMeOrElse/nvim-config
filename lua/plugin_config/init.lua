local packwrap = require("plugins/packwrap")

-- essentials are here because essentials
packwrap:AddPlugin("wbthomason/packer.nvim")
packwrap:AddPlugin("nvim-lua/plenary.nvim")

local files = {
  "telescope",
  "luatree",
  "mason",
  "colorizer",
  -- "yuck",
  "theme",
  "treesitter",
  "whichkey",
  "lualine",
  "bufferline",
  "completion",
  "diffview",
  "harpoon",
}

for _, value in ipairs(files) do
  require("plugin_config/" .. value)
end
