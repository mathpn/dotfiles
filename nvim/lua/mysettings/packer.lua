-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 
  use 'numToStr/Comment.nvim' 
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'akinsho/bufferline.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'sbdchd/neoformat'
  use 'lewis6991/gitsigns.nvim'
  use 'ray-x/lsp_signature.nvim'
  use {
    "folke/trouble.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
end)
