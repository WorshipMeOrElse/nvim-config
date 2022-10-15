local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- basics --
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- themes :D --
	use("morhetz/gruvbox")
	use("4513ECHO/vim-colors-hatsunemiku")

	-- completion --
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("windwp/nvim-autopairs")

	-- snippets --
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- lsp --
	use("neovim/nvim-lspconfig")

	-- search --
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	-- syntax highlighting --
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow")

	-- linting and formatting --
	use("jose-elias-alvarez/null-ls.nvim")

	-- tree --
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})

	-- lualine --
	use("nvim-lualine/lualine.nvim")

	-- git time --
	use("lewis6991/gitsigns.nvim")

	-- tabs --
	use("akinsho/bufferline.nvim")
	use("moll/vim-bbye")

	-- terminal --
	use("akinsho/toggleterm.nvim")

	-- COLORTIME BABYYYYY --
	use("max397574/colortils.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- startup --
	use("startup-nvim/startup.nvim")

	-- poo poo LaTeX --
	use("lervag/vimtex")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)