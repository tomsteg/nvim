-- Gemeinsame on_attach/capabilities evtl. aus eigener Datei holen
-- local on_attach = require('lsp.on_attach')
-- local capabilities = require('lsp.capabilities')

vim.lsp.config('lua_ls', {
  -- falls du globale callbacks verwendest:
  -- on_attach = on_attach,
  -- capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

-- Server aktivieren
vim.lsp.enable('lua_ls')
