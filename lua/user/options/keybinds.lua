local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true } not using yet :P

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Plugin keybinds :D --
keymap("n", "<C-b>", ":NvimTreeFocus<cr>", opts)
keymap("n", "<C-f>", ":Telescope<cr>", opts)
keymap("n", "<S-b>", ":NvimTreeClose<cr>", opts)

keymap("n", "<S-l>", ":BufferLineCycleNext<cr>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<cr>", opts)
keymap("n", "<C-\\>", ":vsplit<cr>", opts)

keymap("n", "<S-w>", ":Bdelete<cr>", opts)
