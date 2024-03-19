local status_ok, ibl = pcall(require, "ibl")
if not status_ok then
  vim.notify("Plugin \"ibl\" not found!")
  return
end

ibl.setup {
    indent = { char = "┇", smart_indent_cap = true },
    scope = { enabled = false },
}
