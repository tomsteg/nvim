return {
  { "nvim-lualine/lualine.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "onsails/lspkind.nvim" },
  { "windwp/nvim-autopairs" },
  { "dinhhuy258/git.nvim" },
  { "L3MON4D3/LuaSnip" },
  { "kyazdani42/nvim-tree.lua" },
  { "nvim-tree/nvim-web-devicons" },
  { "sindrets/diffview.nvim" },
  { "tpope/vim-fugitive" },
  { "renerocksai/calendar-vim" },
  { "github/copilot.vim" },
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim'
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup()
    end,
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "eslint",
          "lua_ls",
          "ts_ls",
          "intelephense",
          "vue_ls"
        },
      })
    end,
  },
  { "folke/snacks.nvim" },
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "preservim/vim-markdown",
    },
    opts = {
      dir = os.getenv("OBSIDIAN_VAULT"),
      completion = {
        nvim_cmp = true, -- enable completion
      },
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
      },
    },
    config = function(_, opts)
      require("obsidian").setup(opts)
    end,
  },
}
