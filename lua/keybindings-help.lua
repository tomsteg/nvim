local M = {}

function M.show()
  local readme_path = vim.fn.stdpath("config") .. "/readme.md"

  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local previewers = require("telescope.previewers")

  -- Abschnitte aus readme.md einlesen
  local sections = {}
  local current_title = nil
  local current_lines = {}

  for line in io.lines(readme_path) do
    if line:match("^## ") then
      if current_title then
        table.insert(sections, { title = current_title, lines = current_lines })
      end
      current_title = line:gsub("^## ", "")
      current_lines = {}
    elseif current_title then
      table.insert(current_lines, line)
    end
  end
  if current_title then
    table.insert(sections, { title = current_title, lines = current_lines })
  end

  pickers.new({}, {
    prompt_title = "Tastaturkürzel",
    finder = finders.new_table({
      results = sections,
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry.title,
          ordinal = entry.title,
        }
      end,
    }),
    previewer = previewers.new_buffer_previewer({
      title = "Shortcuts",
      define_preview = function(self, entry)
        vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, entry.value.lines)
        vim.bo[self.state.bufnr].filetype = "markdown"
      end,
    }),
    sorter = conf.generic_sorter({}),
  }):find()
end

return M
