vim.cmd([[
try
<<<<<<< HEAD
 colorscheme gruvbox
=======
 colorscheme gruvbox 
>>>>>>> 20b1febf2d89e1f1191658cebade5ef8d56562c7
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

vim.cmd(":hi NonText guifg=bg") -- get rid of annoying squiggly lines
