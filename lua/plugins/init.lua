return {
  { "nvim-lualine/lualine.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "windwp/nvim-autopairs" },
  { "williamboman/nvim-lsp-installer" },
  { "neovim/nvim-lspconfig" },
  { "dinhhuy258/git.nvim" },
  { "onsails/lspkind-nvim" },
  { "L3MON4D3/LuaSnip" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  { "kyazdani42/nvim-tree.lua" },
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
  }
}
