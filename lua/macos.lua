vim.opt.clipboard:append { 'unnamedplus' }

local mode = vim.trim(vim.fn.system("osascript -e 'tell app \"System Events\" to get dark mode of appearance preferences'"))
vim.o.background = mode == "true" and "dark" or "light"
