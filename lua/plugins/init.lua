return {
	{"nvim-lualine/lualine.nvim"},
	{"nvim-lua/plenary.nvim"},
	{"nvim-telescope/telescope.nvim"},
	{"nvim-telescope/telescope-file-browser.nvim"},
	{"windwp/nvim-autopairs"},
	{"williamboman/nvim-lsp-installer"},
	{"neovim/nvim-lspconfig"},
	{"dinhhuy258/git.nvim"},
	{"onsails/lspkind-nvim"},
	{"L3MON4D3/LuaSnip"},
	{"hrsh7th/cmp-buffer"},
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/nvim-cmp"},
	{"kyazdani42/nvim-tree.lua"},
	{"sindrets/diffview.nvim"},
	{"tpope/vim-fugitive"},
	{
	  "iamcco/markdown-preview.nvim",
	  build = "cd app && npm install",
	  ft = { "markdown" },
	  config = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Markdown Preview" })
	  end,
	},
	{
	  "epwalsh/obsidian.nvim",
	  version = "*",  -- recommended, use latest release instead of latest commit
	  lazy = true,
	  ft = "markdown",
	  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	  -- event = {
	  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	  --   -- refer to `:h file-pattern` for more examples
	  --   "BufReadPre path/to/my-vault/*.md",
	  --   "BufNewFile path/to/my-vault/*.md",
	  -- },
	  dependencies = {
		"nvim-lua/plenary.nvim",
	  },
	  opts = {
		workspaces = {
		  {
			name = "personal",
			path = "~/vaults/personal",
		  },
		  {
			name = "work",
			path = "~/vaults/work",
		  },
		},
	  },
	}
}
