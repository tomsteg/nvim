local vue_plugin_path = vim.fn.expand(
  "$HOME/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
)

vim.lsp.config('ts_ls', {
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_plugin_path,
        languages = { "vue" },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.lsp.enable('ts_ls')
vim.lsp.enable('vue_ls')
