require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "css", "html", "sql", "javascript", "python" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
