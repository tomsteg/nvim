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
  {
    "epwalsh/obsidian.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "preservim/vim-markdown",
    },
    opts = {
      dir = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/thomas-obsidian",
      completion = {
        nvim_cmp = true, -- enable completion
      },
      mappings = {
        ObsFollowLink = "gf", -- Keyboard shortcut to follow a markdown link
      },
    },
    config = function(_, opts)
      require("obsidian").setup(opts)
    end,
  },
}
