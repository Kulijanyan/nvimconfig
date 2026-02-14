-- Capabilities (nvim-cmp integration)
local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp = pcall(require, "cmp_nvim_lsp")
if ok then
  capabilities = cmp.default_capabilities(capabilities)
else
  vim.notify('Plugin "cmp_nvim_lsp" not found!')
end

-- Configure pylsp
vim.lsp.config("pylsp", {
  capabilities = capabilities,
})

-- Enable pylsp
vim.lsp.enable("pylsp")

-------------------------------------------------
-- Global diagnostic mappings
-------------------------------------------------
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>w', vim.diagnostic.setloclist)

-------------------------------------------------
-- LSP buffer-local mappings
-------------------------------------------------
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

