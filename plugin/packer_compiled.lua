-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\seanj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\seanj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\seanj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\seanj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\seanj\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nÔ\1\0\0\5\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0006\4\3\0009\4\b\0049\4\v\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0006\4\3\0009\4\b\0049\4\r\4B\0\4\1K\0\1\0\fBdelete\6Q\24BufferLineCycleNext\6L\24BufferLineCyclePrev\bcmd\6H\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\n‰\6\0\0\3\0\23\0Q6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\20\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0+\1\1\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0+\1\2\0=\1\16\0006\0\0\0009\0\1\0+\1\2\0=\1\17\0006\0\0\0009\0\1\0+\1\2\0=\1\18\0006\0\0\0009\0\1\0+\1\2\0=\1\19\0006\0\0\0009\0\1\0+\1\1\0=\1\20\0006\0\0\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\28doom_one_plugin_lspsaga#doom_one_plugin_vim_illuminate%doom_one_plugin_indent_blankline\29doom_one_plugin_whichkey\29doom_one_plugin_startify\30doom_one_plugin_dashboard\30doom_one_plugin_nvim_tree\27doom_one_plugin_neogit\30doom_one_plugin_telescope\27doom_one_plugin_barbar\26doom_one_plugin_neorg#doom_one_pumblend_transparency\29doom_one_pumblend_enable$doom_one_transparent_background$doom_one_diagnostics_text_color\31doom_one_enable_treesitter\29doom_one_italic_comments\29doom_one_terminal_colors\29doom_one_cursor_coloring\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\nA\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\3¿\rnav_file\15harpoon.ui\frequire∆\3\1\0\t\0\19\0G6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0006\4\5\0'\6\t\0B\4\2\0029\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\5\0'\6\t\0B\4\2\0029\4\f\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0006\4\5\0'\6\t\0B\4\2\0029\4\14\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0006\4\5\0'\6\t\0B\4\2\0029\4\14\4B\0\4\1)\0\1\0)\1\t\0)\2\1\0M\0\vÄ6\4\0\0009\4\1\0049\4\2\4'\6\3\0'\a\15\0\18\b\3\0&\a\b\a3\b\16\0B\4\4\0012\3\0ÄO\0ı\1276\0\5\0'\2\17\0B\0\2\0029\0\18\0B\0\1\1K\0\1\0\nsetup\fharpoon\0\14<leader>h\22toggle_quick_menu\15<leader>hm\rnav_prev\15<leader>hh\rnav_next\15harpoon.ui\15<leader>hl\radd_file\17harpoon.mark\frequire\15<leader>ha\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0¿\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñå\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚óèè\3\0\0\4\1!\0E5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\a\0-\1\0\0009\1\15\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\0\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\22\1=\1\23\0-\1\0\0009\1\22\1=\1\24\0-\1\0\0009\1\22\1=\1\25\0-\1\0\0009\1\0\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0005\1\31\0006\2\28\0009\2\29\0029\2\30\2B\2\1\0028\2\2\0=\2 \1L\1\2\0\3¿\afg\1\0\0\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6S\6s\vorange\ano\6c\fmagenta\6V\5\6v\tblue\6i\ngreen\6n\1\0\0\bredé\a\1\0\t\0-\0]5\0\1\0005\1\0\0=\1\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\n\0005\1\v\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\f\0003\1\r\0003\2\14\0005\3\15\0\18\4\1\0005\6\20\0003\a\16\0>\a\1\0065\a\18\0009\b\17\3=\b\19\a=\a\21\0065\a\22\0=\a\23\6B\4\2\1\18\4\1\0005\6\26\0003\a\24\0>\a\1\0063\a\25\0=\a\21\0065\a\27\0=\a\23\6B\4\2\1\18\4\1\0005\6\28\0005\a\29\0=\a\23\6B\4\2\1\18\4\1\0005\6\30\0005\a\31\0=\a\23\6B\4\2\1\18\4\1\0005\6 \0005\a!\0=\a\23\6B\4\2\1\18\4\2\0005\6\"\0006\a#\0009\a$\a=\a%\0065\a'\0009\b&\3=\b\19\a=\a\21\6B\4\2\1\18\4\2\0005\6(\0B\4\2\1\18\4\2\0005\6)\0B\4\2\0016\4*\0'\6+\0B\4\2\0029\4,\4\18\6\0\0B\4\2\0012\0\0ÄK\0\1\0\nsetup\flualine\frequire\1\2\0\0\16diagnostics\1\2\0\0\vbranch\1\0\0\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rprogress\1\0\2\tleft\3\0\nright\3\1\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\1\1\2\1\0\rfiletype\14icon_only\2\1\0\2\tleft\3\1\nright\3\1\1\0\0\0\0\fpadding\1\0\2\tleft\3\0\nright\3\0\ncolor\1\0\0\afg\1\0\0\tblue\0\1\0\b\bred\f#ff6c6b\vorange\f#FF8800\tblue\f#51afef\vyellow\f#ECBE7B\fmagenta\f#c678dd\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\2\25component_separators\5\23section_separators\5\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nW\0\1\4\0\4\0\v\a\0\0\0X\1\1ÄK\0\1\0006\1\1\0'\3\2\0B\1\2\0028\1\0\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire\16sumneko_lua÷\1\0\0\a\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\2'\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\bcmd\1\0\0J\\custom-dependencies\\robloxlsp\\server\\bin\\Windows\\lua-language-server\vconfig\fstdpath\afn\bvim\nsetup\16sumneko_lua\14lspconfig\frequireµ\1\1\0\4\0\v\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\0\1\2\0\0\16sumneko_lua\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    config = { "\27LJ\2\nm\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\3\0\0\vstylua\vselene\nsetup\18mason-null-ls\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nö\1\0\0\6\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\5>\5\2\4=\4\t\3B\1\2\1K\0\1\0\fsources\1\0\0\vselene\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expandÓ\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\27Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\18Ä-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1B\1\1\1X\1\tÄ-\1\2\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible®\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3¿\tname\vsource\1\0\4\rnvim_lsp\n[LSP]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\tpath\v[Path]\tmenu\a%s\vformat\vstring\tkindî\n\1\0\r\0C\0m6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\fˇˇB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\5\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a=\a5\0065\a8\0009\b6\0009\b7\b=\b9\a=\a:\0065\a>\0005\b<\0005\t;\0=\t=\b=\b?\a=\a@\0065\aA\0=\aB\6B\4\2\0012\0\0ÄK\0\1\0\17experimental\1\0\2\16native_menu\1\15ghost_text\1\vwindow\18documentation\1\0\0\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bÔúò\nValue\bÔ¢ü\14Reference\bÔíÅ\tUnit\bÓàü\vFolder\bÔùä\rProperty\bÔÇ≠\rConstant\bÔõº\vModule\bÔíá\vStruct\bÔÜ≥\14Interface\bÔÉ®\nEvent\bÔÉß\nClass\bÔ†ñ\rOperator\bÔöî\rVariable\bÔö¶\18TypeParameter\bÔûÉ\nField\bÓúñ\16Constructor\bÔê•\15EnumMember\bÔÖù\rFunction\bÔûî\vMethod\6m\tText\bÔùæ\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\0\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÀ\1\0\0\5\0\r\0\0236\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\0\0009\4\v\0049\4\f\4B\0\4\1K\0\1\0\19NvimTreeToggle\bcmd\14<leader>t\6n\bset\vkeymap\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\në\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\3\0\0\blua\vsvelte\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\15find_files\22telescope.builtin\frequireä\2\1\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\2B\0\2\0026\1\r\0009\1\14\0019\1\15\1'\3\16\0'\4\17\0003\5\18\0B\1\4\0012\0\0ÄK\0\1\0\0\14<leader>f\6n\bset\vkeymap\bvim\18layout_config\1\0\0\1\0\1\vheight\3\n\fget_ivy\21telescope.themes\fpickers\1\0\0\16colorscheme\1\0\0\1\0\1\19enable_preview\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "C:\\Users\\seanj\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\5\0\r\0\0236\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\0\0009\4\v\0049\4\f\4B\0\4\1K\0\1\0\19NvimTreeToggle\bcmd\14<leader>t\6n\bset\vkeymap\nsetup\14nvim-tree\frequire\23loaded_netrwPlugin\17loaded_netrw\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0¿\14lualine_c\rsections\vinsert\ntableI\0\1\5\1\4\0\b6\1\0\0009\1\1\1-\3\0\0009\3\2\0039\3\3\3\18\4\0\0B\1\3\1K\0\1\0\0¿\14lualine_x\rsections\vinsert\ntable\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚ñå\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b‚óèè\3\0\0\4\1!\0E5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\a\0-\1\0\0009\1\15\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\0\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\22\1=\1\23\0-\1\0\0009\1\22\1=\1\24\0-\1\0\0009\1\22\1=\1\25\0-\1\0\0009\1\0\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0005\1\31\0006\2\28\0009\2\29\0029\2\30\2B\2\1\0028\2\2\0=\2 \1L\1\2\0\3¿\afg\1\0\0\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6S\6s\vorange\ano\6c\fmagenta\6V\5\6v\tblue\6i\ngreen\6n\1\0\0\bredé\a\1\0\t\0-\0]5\0\1\0005\1\0\0=\1\2\0005\1\3\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\n\0005\1\v\0004\2\0\0=\2\4\0014\2\0\0=\2\5\0014\2\0\0=\2\6\0014\2\0\0=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\1=\1\f\0003\1\r\0003\2\14\0005\3\15\0\18\4\1\0005\6\20\0003\a\16\0>\a\1\0065\a\18\0009\b\17\3=\b\19\a=\a\21\0065\a\22\0=\a\23\6B\4\2\1\18\4\1\0005\6\26\0003\a\24\0>\a\1\0063\a\25\0=\a\21\0065\a\27\0=\a\23\6B\4\2\1\18\4\1\0005\6\28\0005\a\29\0=\a\23\6B\4\2\1\18\4\1\0005\6\30\0005\a\31\0=\a\23\6B\4\2\1\18\4\1\0005\6 \0005\a!\0=\a\23\6B\4\2\1\18\4\2\0005\6\"\0006\a#\0009\a$\a=\a%\0065\a'\0009\b&\3=\b\19\a=\a\21\6B\4\2\1\18\4\2\0005\6(\0B\4\2\1\18\4\2\0005\6)\0B\4\2\0016\4*\0'\6+\0B\4\2\0029\4,\4\18\6\0\0B\4\2\0012\0\0ÄK\0\1\0\nsetup\flualine\frequire\1\2\0\0\16diagnostics\1\2\0\0\vbranch\1\0\0\ngreen\bfmt\nupper\vstring\1\2\0\0\15o:encoding\1\0\2\tleft\3\1\nright\3\1\1\2\0\0\rprogress\1\0\2\tleft\3\0\nright\3\1\1\2\0\0\rfilename\1\0\2\tleft\3\1\nright\3\1\1\2\1\0\rfiletype\14icon_only\2\1\0\2\tleft\3\1\nright\3\1\1\0\0\0\0\fpadding\1\0\2\tleft\3\0\nright\3\0\ncolor\1\0\0\afg\1\0\0\tblue\0\1\0\b\bred\f#ff6c6b\vorange\f#FF8800\tblue\f#51afef\vyellow\f#ECBE7B\fmagenta\f#c678dd\vviolet\f#a9a1e1\ngreen\f#98be65\tcyan\f#008080\0\0\22inactive_sections\1\0\0\rsections\14lualine_x\14lualine_c\14lualine_z\14lualine_y\14lualine_b\14lualine_a\1\0\0\foptions\1\0\0\1\0\2\25component_separators\5\23section_separators\5\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\në\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\3\0\0\blua\vsvelte\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nW\0\1\4\0\4\0\v\a\0\0\0X\1\1ÄK\0\1\0006\1\1\0'\3\2\0B\1\2\0028\1\0\0019\1\3\0014\3\0\0B\1\2\1K\0\1\0\nsetup\14lspconfig\frequire\16sumneko_lua÷\1\0\0\a\0\v\0\0186\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\t\0004\3\3\0006\4\4\0009\4\5\0049\4\6\4'\6\a\0B\4\2\2'\5\b\0&\4\5\4>\4\1\3=\3\n\2B\0\2\1K\0\1\0\bcmd\1\0\0J\\custom-dependencies\\robloxlsp\\server\\bin\\Windows\\lua-language-server\vconfig\fstdpath\afn\bvim\nsetup\16sumneko_lua\14lspconfig\frequireµ\1\1\0\4\0\v\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0005\2\t\0003\3\a\0>\3\1\0023\3\b\0=\3\n\2B\0\2\1K\0\1\0\16sumneko_lua\1\0\0\0\0\19setup_handlers\21ensure_installed\1\0\0\1\2\0\0\16sumneko_lua\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nÔ\1\0\0\5\0\14\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0006\4\3\0009\4\b\0049\4\t\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0006\4\3\0009\4\b\0049\4\v\4B\0\4\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\f\0006\4\3\0009\4\b\0049\4\r\4B\0\4\1K\0\1\0\fBdelete\6Q\24BufferLineCycleNext\6L\24BufferLineCyclePrev\bcmd\6H\6n\bset\vkeymap\bvim\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nö\1\0\0\6\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\3\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\6\0059\5\a\5>\5\2\4=\4\t\3B\1\2\1K\0\1\0\fsources\1\0\0\vselene\16diagnostics\vstylua\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: mason-null-ls.nvim
time([[Config for mason-null-ls.nvim]], true)
try_loadstring("\27LJ\2\nm\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\3\0\0\vstylua\vselene\nsetup\18mason-null-ls\frequire\0", "config", "mason-null-ls.nvim")
time([[Config for mason-null-ls.nvim]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\n‰\6\0\0\3\0\23\0Q6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\20\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0+\1\1\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0+\1\2\0=\1\16\0006\0\0\0009\0\1\0+\1\2\0=\1\17\0006\0\0\0009\0\1\0+\1\2\0=\1\18\0006\0\0\0009\0\1\0+\1\2\0=\1\19\0006\0\0\0009\0\1\0+\1\1\0=\1\20\0006\0\0\0009\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\28doom_one_plugin_lspsaga#doom_one_plugin_vim_illuminate%doom_one_plugin_indent_blankline\29doom_one_plugin_whichkey\29doom_one_plugin_startify\30doom_one_plugin_dashboard\30doom_one_plugin_nvim_tree\27doom_one_plugin_neogit\30doom_one_plugin_telescope\27doom_one_plugin_barbar\26doom_one_plugin_neorg#doom_one_pumblend_transparency\29doom_one_pumblend_enable$doom_one_transparent_background$doom_one_diagnostics_text_color\31doom_one_enable_treesitter\29doom_one_italic_comments\29doom_one_terminal_colors\29doom_one_cursor_coloring\6g\bvim\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expandÓ\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\27Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\18Ä-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\5\1B\1\1\1X\1\tÄ-\1\2\0B\1\1\2\15\0\1\0X\2\3Ä\18\1\0\0B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\2¿\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible®\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3¿\tname\vsource\1\0\4\rnvim_lsp\n[LSP]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\tpath\v[Path]\tmenu\a%s\vformat\vstring\tkindî\n\1\0\r\0C\0m6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\fˇˇB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\5\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a=\a5\0065\a8\0009\b6\0009\b7\b=\b9\a=\a:\0065\a>\0005\b<\0005\t;\0=\t=\b=\b?\a=\a@\0065\aA\0=\aB\6B\4\2\0012\0\0ÄK\0\1\0\17experimental\1\0\2\16native_menu\1\15ghost_text\1\vwindow\18documentation\1\0\0\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\21select_next_item\n<C-k>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bÔúò\nValue\bÔ¢ü\14Reference\bÔíÅ\tUnit\bÓàü\vFolder\bÔùä\rProperty\bÔÇ≠\rConstant\bÔõº\vModule\bÔíá\vStruct\bÔÜ≥\14Interface\bÔÉ®\nEvent\bÔÉß\nClass\bÔ†ñ\rOperator\bÔöî\rVariable\bÔö¶\18TypeParameter\bÔûÉ\nField\bÓúñ\16Constructor\bÔê•\15EnumMember\bÔÖù\rFunction\bÔûî\vMethod\6m\tText\bÔùæ\nColor\bÔ£ó\fSnippet\bÔÉÑ\fKeyword\bÔ†ä\tEnum\bÔÖù\0\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\nA\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\3¿\rnav_file\15harpoon.ui\frequire∆\3\1\0\t\0\19\0G6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\b\0006\4\5\0'\6\t\0B\4\2\0029\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\5\0'\6\t\0B\4\2\0029\4\f\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0006\4\5\0'\6\t\0B\4\2\0029\4\14\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\r\0006\4\5\0'\6\t\0B\4\2\0029\4\14\4B\0\4\1)\0\1\0)\1\t\0)\2\1\0M\0\vÄ6\4\0\0009\4\1\0049\4\2\4'\6\3\0'\a\15\0\18\b\3\0&\a\b\a3\b\16\0B\4\4\0012\3\0ÄO\0ı\1276\0\5\0'\2\17\0B\0\2\0029\0\18\0B\0\1\1K\0\1\0\nsetup\fharpoon\0\14<leader>h\22toggle_quick_menu\15<leader>hm\rnav_prev\15<leader>hh\rnav_next\15harpoon.ui\15<leader>hl\radd_file\17harpoon.mark\frequire\15<leader>ha\6n\bset\vkeymap\bvim\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0¿\15find_files\22telescope.builtin\frequireä\2\1\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\0\0'\2\b\0B\0\2\0029\0\t\0005\2\v\0005\3\n\0=\3\f\2B\0\2\0026\1\r\0009\1\14\0019\1\15\1'\3\16\0'\4\17\0003\5\18\0B\1\4\0012\0\0ÄK\0\1\0\0\14<leader>f\6n\bset\vkeymap\bvim\18layout_config\1\0\0\1\0\1\vheight\3\n\fget_ivy\21telescope.themes\fpickers\1\0\0\16colorscheme\1\0\0\1\0\1\19enable_preview\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
