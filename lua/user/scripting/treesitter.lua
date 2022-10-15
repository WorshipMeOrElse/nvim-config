require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua" },
  sync_install = false,
  ignore_insall = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
