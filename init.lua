require('maps')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- oder 'main', je nach Stabilitätspräferenz
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

require('base')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end

vim.diagnostic.config({
  virtual_text = true,   -- zeigt Fehler im Text an
  signs = true,          -- zeigt Fehler im Zeichenbereich an
  underline = true,      -- unterstreicht fehlerhafte Stellen
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "asciidoc",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
