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
  "rebelot/kanagawa.nvim",
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
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
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      require'cmp'.setup {
        snippet = {
          expand = function(args)
            require'luasnip'.lsp_expand(args.body)
          end
        },
        sources = {
          { name = 'luasnip' },
        },
      }
    end
  },
  {
    'saadparwaiz1/cmp_luasnip'
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
})

require "configs.configs"
require "configs.colorscheme"
require "configs.keybinds"
require "configs.luasnip"
require "configs.lualine"
require "configs.treesitter"

require("ibl").setup()
