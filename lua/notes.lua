-- Zufällige Affirmation beim Anlegen neuer Daily-Notizen
local function get_random_affirmation()
  local vault = vim.env.OBSIDIAN_VAULT
  if not vault then return nil end
  local path = vault .. "/affirmationen.md"
  local ok, lines = pcall(vim.fn.readfile, path)
  if not ok then return nil end
  local items = {}
  for _, line in ipairs(lines) do
    local item = line:match("^%- (.+)")
    if item then table.insert(items, item) end
  end
  if #items == 0 then return nil end
  math.randomseed(os.time())
  return items[math.random(#items)]
end

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*/daily/*.md",
  callback = function(ev)
    local buf = ev.buf
    vim.defer_fn(function()
      if not vim.api.nvim_buf_is_valid(buf) then return end
      local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
      -- {{affirmation}}-Platzhalter im Buffer suchen und ersetzen
      for i, line in ipairs(lines) do
        if line:match("{{affirmation}}") then
          local aff = get_random_affirmation()
          if aff then
            vim.api.nvim_buf_set_lines(buf, i - 1, i, false, { "> " .. aff })
          end
          return
        end
      end
    end, 300)
  end,
})
