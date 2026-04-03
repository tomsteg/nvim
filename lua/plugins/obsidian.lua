-- lua/plugins/obsidian.lua
local vault = vim.env.OBSIDIAN_VAULT

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "renerocksai/calendar-vim",
  },
  opts = {
    workspaces = {
      {
        name = "thomas-obsidian",
        path = vault,
      },
    },
    daily_notes = {
      folder = "daily",
      template = "templates/daily.md",
    },
    -- Dateiname beim Erstellen einer neuen Notiz aus einem Link
    note_id_func = function(title)
      if title ~= nil then
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9äöüÄÖÜß%-]", ""):lower()
      else
        return tostring(os.time())
      end
    end,

    -- Kein automatisches id/alias im Frontmatter — Template übernimmt das
    note_frontmatter_func = function(note)
      local out = {}
      if note.metadata ~= nil then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    templates = {
      folder = "templates",
    },
    completion = {
      nvim_cmp = true,
    },
    ui = {
      enable = false, -- render-markdown.nvim übernimmt das
    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)

    vim.keymap.set("n", "<leader>z",  "<cmd>ObsidianQuickSwitch<CR>",  { desc = "Obsidian: Quick Switch" })
    vim.keymap.set("n", "<leader>zf", "<cmd>ObsidianSearch<CR>",       { desc = "Obsidian: Suche" })
    vim.keymap.set("n", "<leader>zg", "<cmd>ObsidianSearch<CR>",       { desc = "Obsidian: Volltext-Suche" })
    vim.keymap.set("n", "<leader>zd", "<cmd>ObsidianToday<CR>",        { desc = "Obsidian: Heutige Daily Note" })
    vim.keymap.set("n", "<leader>zz", "<cmd>ObsidianFollowLink<CR>",   { desc = "Obsidian: Link folgen" })
    vim.keymap.set("n", "gf",         "<cmd>ObsidianFollowLink<CR>",   { desc = "Obsidian: Link folgen" })
    vim.keymap.set("n", "<leader>zn", "<cmd>ObsidianNew<CR>",          { desc = "Obsidian: Neue Notiz" })
    vim.keymap.set("n", "<leader>zc", "<cmd>ObsidianDailies<CR>",      { desc = "Obsidian: Daily Notes" })
    vim.keymap.set("n", "<leader>zb", "<cmd>ObsidianBacklinks<CR>",    { desc = "Obsidian: Backlinks" })
    vim.keymap.set("n", "<leader>zI", "<cmd>ObsidianPasteImg<CR>",     { desc = "Obsidian: Bild einfügen" })
    vim.keymap.set("i", "[[",         "<cmd>ObsidianLinkNew<CR>",      { desc = "Obsidian: Link einfügen" })
  end,
}
