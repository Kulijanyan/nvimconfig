local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Plugin \"lspconfig\" not found!")
  return
end

local status_ok, capabilities = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  vim.notify("Plugin \"cmp_nvim_lsp\" not found!")
  return
end

capabilities.default_capabilities()

lspconfig.pylsp.setup({})

-- Global mappings.
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>w', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd(
  'LspAttach',
  {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      -- Buffer local mappings.
      local opts = { buffer = ev.buf }
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
  }
)
