-- ftplugin/markdown.lua

local function toggle_checkbox()
  local line = vim.api.nvim_get_current_line()
  local new_line

  if line:match("%- %[x%]") then
    new_line = line:gsub("%- %[x%]", "- [ ]", 1)
  elseif line:match("%- %[ %]") then
    new_line = line:gsub("%- %[ %]", "- [x]", 1)
  else
    return
  end

  vim.api.nvim_set_current_line(new_line)
end

local function toggle_task()
  local line = vim.api.nvim_get_current_line()
  local new_line

  if line:match("%- %[.%]") then
    new_line = line:gsub("%- %[.%] ?", "- ", 1)
  elseif line:match("^(%s*)%- ") then
    new_line = line:gsub("^(%s*%- )", "%1[ ] ", 1)
  else
    return
  end

  vim.api.nvim_set_current_line(new_line)
end

vim.keymap.set("n", "<leader>x", toggle_checkbox, {
  buffer = true,
  desc = "Markdown: Aufgabe erledigt/unerledigt",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>mt", toggle_task, {
  buffer = true,
  desc = "Markdown: Listenpunkt zu Aufgabe umwandeln (und zurück)",
  noremap = true,
  silent = true,
})

-- Tasks: Datum-Emojis einfügen (Obsidian Tasks Plugin-Format)
local function insert_date(emoji, offset_days)
  local timestamp = os.time() + (offset_days * 86400)
  local date = os.date("%Y-%m-%d", timestamp)
  local line = vim.api.nvim_get_current_line()
  -- Vorhandenes Datum mit diesem Emoji ersetzen, sonst ans Ende anfügen
  local pattern = emoji .. " %d%d%d%d%-%d%d%-%d%d"
  if line:match(pattern) then
    local new_line = line:gsub(pattern, emoji .. " " .. date)
    vim.api.nvim_set_current_line(new_line)
  else
    vim.api.nvim_set_current_line(line .. " " .. emoji .. " " .. date)
  end
end

-- Kalender-Picker: Datum auswählen und mit Emoji einfügen
-- calendar-vim erwartet g:calendar_action als String (Vimscript-Funktionsname),
-- keine Lua-Funktion. Daher: globale Lua-Funktion + Vimscript-Brücke.
_G._tasks_calendar_insert = function(day, month, year)
  local emoji = vim.g._tasks_date_emoji or "📅"
  local bufnr = vim.g._tasks_date_bufnr
  local lnum  = vim.g._tasks_date_lnum
  if not bufnr or not lnum then return end
  local line = vim.api.nvim_buf_get_lines(bufnr, lnum, lnum + 1, false)[1]
  if not line then return end
  local date = string.format("%04d-%02d-%02d", year, month, day)
  local pattern = emoji .. " %d%d%d%d%-%d%d%-%d%d"
  local new_line = line:match(pattern)
    and line:gsub(pattern, emoji .. " " .. date)
    or  (line .. " " .. emoji .. " " .. date)
  vim.api.nvim_buf_set_lines(bufnr, lnum, lnum + 1, false, { new_line })
end

vim.cmd([[
  if !exists("*TasksCalendarAction")
    function! TasksCalendarAction(day, month, year, week, dir)
      call v:lua._tasks_calendar_insert(a:day, a:month, a:year)
      bd
    endfunction
  endif
]])

local function pick_date(emoji)
  vim.g._tasks_date_emoji = emoji
  vim.g._tasks_date_bufnr = vim.api.nvim_get_current_buf()
  vim.g._tasks_date_lnum  = vim.api.nvim_win_get_cursor(0)[1] - 1
  vim.g.calendar_action   = "TasksCalendarAction"
  vim.cmd("Calendar")
end

-- Highlighting: überfällige Daten rot, heutige gelb
local today = os.date("%Y-%m-%d")
vim.api.nvim_set_hl(0, "TasksOverdue", { fg = "#ff5555", bold = true })
vim.api.nvim_set_hl(0, "TasksToday",   { fg = "#f1fa8c", bold = true })

vim.fn.matchadd("TasksToday", "[📅⏰] " .. today)

-- Überfällige Daten: Datum < heute (vereinfacht: alle Daten vor heute mit Emoji)
local year, month, day = today:match("(%d%d%d%d)-(%d%d)-(%d%d)")
vim.fn.matchadd("TasksOverdue",
  "\\([📅⏰]\\) \\(\\d\\{4\\}-\\d\\{2\\}-\\d\\{2\\}\\)\\@<=\\( " ..
  "\\|\\ze\\)",
  10)
-- Einfachere Variante: alle Emoji-Datum-Paare die < heute sind werden beim Laden geprüft
do
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  for lnum, line in ipairs(lines) do
    for _, emoji in ipairs({ "📅", "⏰" }) do
      local d = line:match(emoji .. " (%d%d%d%d%-%d%d%-%d%d)")
      if d and d < today then
        vim.fn.matchaddpos("TasksOverdue", { { lnum, line:find(emoji), 13 } })
      elseif d and d == today then
        vim.fn.matchaddpos("TasksToday", { { lnum, line:find(emoji), 13 } })
      end
    end
  end
end

-- Keybindings
vim.keymap.set("n", "<leader>d1", function() insert_date("📅", 0) end,
  { buffer = true, desc = "Tasks: Fällig heute (📅)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d2", function() insert_date("📅", 1) end,
  { buffer = true, desc = "Tasks: Fällig morgen (📅)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d3", function() insert_date("📅", 7) end,
  { buffer = true, desc = "Tasks: Fällig in 7 Tagen (📅)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d4", function() pick_date("📅") end,
  { buffer = true, desc = "Tasks: Fälligkeitsdatum wählen (📅)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d5", function() insert_date("⏰", 0) end,
  { buffer = true, desc = "Tasks: Erinnerung heute (⏰)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d6", function() pick_date("⏰") end,
  { buffer = true, desc = "Tasks: Erinnerungsdatum wählen (⏰)", noremap = true, silent = true })
