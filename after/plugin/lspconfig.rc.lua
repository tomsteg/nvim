vim.lsp.config('intelephense', {
  filetypes = { 'php' },
  settings = {
    intelephense = {
      diagnostics = {
        enable = true,
      },
      phpstan = {
        enabled = true,
        command = "~/.composer/vendor/bin/phpstan",
      }
    }
  }
})

vim.lsp.config('eslint', {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = true
  end,
  settings = {
    format = { enable = true },
  }
})

vim.lsp.config('ts_ls', {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
})

vim.lsp.config('volar', {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
  init_options = {
    typescript = {
      tsdk = vim.fn.expand("~/.npm-global/lib/node_modules/typescript/lib")
    }
  }
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },

      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    },
  },
})
