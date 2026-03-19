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

vim.keymap.set("n", "<leader>t", toggle_task, {
  buffer = true,
  desc = "Markdown: Listenpunkt zu Aufgabe umwandeln (und zurück)",
  noremap = true,
  silent = true,
})
