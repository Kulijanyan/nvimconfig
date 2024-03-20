local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("Plugin \"nvim-treesitter\" not found!")
  return
end

treesitter_configs.setup {
  ensure_installed = { "lua", "css", "html", "sql", "python" },
  sync_install = false,
  auto_install = true,

  highlight = { enable = false },
  indent = { enable = true },
}
