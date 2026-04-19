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

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*/daily/*.md",
  callback = function(ev)
    local buf = ev.buf
    local filepath = vim.api.nvim_buf_get_name(buf)
    -- Nur bei frisch erstellten Dateien (jünger als 5 Sekunden)
    local stat = vim.uv.fs_stat(filepath)
    if not stat then return end
    if os.time() - stat.mtime.sec > 5 then return end
    local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
    -- Ende des Frontmatters finden
    local fm_end = 0
    if lines[1] == "---" then
      for i = 2, #lines do
        if lines[i] == "---" then fm_end = i; break end
      end
    end
    -- Nichts tun, wenn bereits ein Blockquote vorhanden
    for i = fm_end + 1, math.min(fm_end + 4, #lines) do
      if lines[i] and lines[i]:match("^>") then return end
    end
    local aff = get_random_affirmation()
    if aff then
      vim.api.nvim_buf_set_lines(buf, fm_end, fm_end, false, { "> " .. aff, "" })
    end
  end,
})
