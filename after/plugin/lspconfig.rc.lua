local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

nvim_lsp.intelephense.setup {
	filetypes = {'php'};
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
}

nvim_lsp.ts_ls.setup {}

nvim_lsp.volar.setup {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
  init_options = {
    typescript = {
      tsdk = vim.fn.expand("~/.npm-global/lib/node_modules/typescript/lib")
    }
  }
}

nvim_lsp.lua_ls.setup {
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
}
