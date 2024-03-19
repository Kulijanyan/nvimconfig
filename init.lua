-- lazy bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Colorschemes
  "rebelot/kanagawa.nvim",
  { "kepano/flexoki-neovim", name = "flexoki" },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,
      insert_at_end = true,
    },
    version = "^1.0.0",
  },
  {
    "numToStr/Comment.nvim",
    event = "BufReadPost",
    opts = {
      padding = true,
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp"
  },
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  },
  "mfussenegger/nvim-lint",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",

  -- Mini nvim
  { 'echasnovski/mini.trailspace', version = false },
  { 'echasnovski/mini.pairs', version = false },
})

-- Key bindings / shortcuts
require "configs.keybinds"

-- General configs
require "configs.configs"
require "configs.colorscheme"

-- Plugin configs
require "configs.cmp"
require "configs.luasnip"
require "configs.lualine"
require "configs.indent_blankline"
require "configs.nvim_tree"

-- LSP
require "configs.lsp"

-- Mini
require "configs.mini"

-- Custom functions
require "custom.main"
