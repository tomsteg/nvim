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
      local out = {
        date = os.date("%Y-%m-%d"),
      }
      -- Tags explizit erhalten (obsidian.nvim verwaltet diese intern)
      if note.tags and #note.tags > 0 then
        out.tags = note.tags
      elseif note.path and tostring(note.path):find("/daily/") then
        out.tags = { "daily" }
      end
      -- Custom-Felder (alle übrigen Frontmatter-Felder) — vorhandenes date überschreibt nicht
      if note.metadata ~= nil then
        for k, v in pairs(note.metadata) do
          if out[k] == nil then
            out[k] = v
          end
        end
      end
      return out
    end,

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
    },
    completion = {
      nvim_cmp = true,
    },
    ui = {
      enable = false, -- render-markdown.nvim übernimmt das
    },
  },
  config = function(_, opts)
    vim.g.calendar_monday = 1  -- Woche beginnt mit Montag
    require("obsidian").setup(opts)

    -- Automatisch date-Frontmatter einfügen, wenn eine neue .md-Datei im Vault direkt erstellt wird
    vim.api.nvim_create_autocmd("BufNewFile", {
      pattern = (vim.env.OBSIDIAN_VAULT or "") .. "/**/*.md",
      callback = function()
        vim.defer_fn(function()
          local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
          local has_frontmatter = #lines > 0 and lines[1] == "---"
          if not has_frontmatter then
            vim.api.nvim_buf_set_lines(0, 0, 0, false, {
              "---",
              "date: " .. os.date("%Y-%m-%d"),
              "---",
              "",
            })
          end
        end, 50)
      end,
    })

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
  end,
}
