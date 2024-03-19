local status_ok, mini_trail = pcall(require, "mini.trailspace")
if not status_ok then
  vim.notify("Plugin \"mini.trailspace\" not found!")
  return
end

mini_trail.setup()

local status_ok, mini_pairs = pcall(require, "mini.pairs")
if not status_ok then
  vim.notify("Plugin \"mini.pairs\" not found!")
  return
end

mini_pairs.setup()
