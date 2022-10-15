vim.cmd([[
try
 colorscheme hatsunemiku
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
