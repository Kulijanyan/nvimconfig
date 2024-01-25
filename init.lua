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
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
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
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("configs.autopairs")
    end,
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
  "lewis6991/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
})

-- Key bindings / shortcuts
require "configs.keybinds"

-- General configs
require "configs.configs"
require "configs.colorscheme"

-- Plugin configs
require "configs.lint"
require "configs.cmp"
require "configs.luasnip"
require "configs.lualine"
require "configs.indent_blankline"

-- LSP
require "configs.lsp"
