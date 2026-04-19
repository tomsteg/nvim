vim.opt.clipboard:append { 'unnamedplus' }

local function is_dark_mode()
  local result = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null")
  return result:match("Dark") ~= nil
end

if is_dark_mode() then
  vim.o.background = "dark"
else
  vim.o.background = "light"
end
