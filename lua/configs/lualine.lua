local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  vim.notify("Plugin \"lualine\" not found!")
  return
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'searchcount', 'selectioncount'},
    lualine_c = {{'filename', file_status = true, path = 1}},
    lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}
