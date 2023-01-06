
-- essentials are here because essentials

local files = {
  "telescope",
  "luatree",
  "mason",
  "theme",
  "treesitter",
  "lualine",
  "bufferline",
  "completion",
  "harpoon",
}

for _, value in ipairs(files) do
  require("plugin_config/" .. value)
end
