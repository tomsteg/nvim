-- lua/plugins/telekasten.lua
local home = vim.env.TELEKASTEN_HOME
local dailies = vim.env.TELEKASTEN_DAILIES
local templates = vim.env.TELEKASTEN_TEMPLATES
local template_new_daily = vim.env.TELEKASTEN_TEMPLATE_NEW_DAILY

-- optional: sane fallbacks if env vars are missing
home = home or vim.fn.expand("~/notes")
dailies = dailies or (home .. "/daily")
templates = templates or (home .. "/templates")
template_new_daily = template_new_daily or (templates .. "/daily.md")

return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telekasten").setup({
      home = home,
      dailies = dailies,
      templates = templates,
      template_new_daily = template_new_daily,
    })

    -- keymaps (unchanged)
    vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")
    vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
    vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
    vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
    vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
    vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
    vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
    vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
    vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
    vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
  end,
}
