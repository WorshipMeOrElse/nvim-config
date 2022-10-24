vim.cmd([[
try
 colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

vim.cmd(":hi NonText guifg=bg") -- get rid of annoying squiggly lines
