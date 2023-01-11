vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use) 
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"

  use "moll/vim-bbye"
  use "akinsho/bufferline.nvim"
  
  use { "norcalli/nvim-colorizer.lua", config = function()
    require("colorizer").setup()
  end}

  use "nvim-lualine/lualine.nvim"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"

  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  use "sindrets/diffview.nvim"

  use {
    "nvim-tree/nvim-web-devicons",
    requires = { "nvim-tree/nvim-tree.lua" }
  }

  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jayp0521/mason-null-ls.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  use "nvim-telescope/telescope.nvim"

  use "NTBBloodbath/doom-one.nvim"

  use "nvim-treesitter/nvim-treesitter"

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }
end)
