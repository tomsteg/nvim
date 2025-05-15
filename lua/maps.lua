-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.keymap.set("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
vim.keymap.set("n", "<C-i>", "<C-i>", opts)

vim.keymap.set('', '<', '[', opts)
vim.keymap.set('', '>', ']', opts)

-- split window
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w', opts)
vim.keymap.set('n', 'sh', ':split<Return><C-w>w', opts)

-- better window navigation
vim.keymap.set('n', '<Space>', '<C-w>w', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize window
vim.keymap.set("n", "<C-w>+", ":vertical resize +5<CR>", opts)
vim.keymap.set("n", "<C-w>-", ":vertical resize -5<CR>", opts)

-- buffers
vim.keymap.set('n', '<Leader>bn', ':bn<CR>', opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- toggle highlightsearch
vim.keymap.set('n', '<Leader>h', ':set hls!<cr>', opts)

-- Asciidoctor und Pdf Funktionen
vim.keymap.set("n", "<leader>ar", function ()
	local input_file = vim.fn.expand("%")
	local output_file = input_file:gsub("%.adoc$", ".pdf")
	local cmd = string.format("asciidoctor-pdf -r asciidoctor-diagram -a pdf-theme=default-with-font-fallback %s", input_file)
	vim.cmd("!" .. cmd)
	vim.notify("PDF generiert: " .. output_file, vim.log.levels.INFO)
end, { desc = "Asciidoctor zu PDF", noremap = true, silent = true})

vim.keymap.set("n", "<leader>ao", function ()
	local output_file = vim.fn.expand("%:r") .. ".pdf"
	vim.cmd("!open -a Safari " .. output_file .. " &")
end, { desc = "PDF mit Safari öffnen", noremap = true, silent = true})

-- Obsidian keymap
-- built in:
-- gf in normal_mode = goto file under cursor
vim.keymap.set("n", "<leader>od", function ()
	vim.cmd("ObsidianDailies")
end, { desc = "Opens dailies in telescope", noremap = true, silent = true })

vim.keymap.set("n", "<leader>ot", function ()
	vim.cmd("ObsidianToday")
end, { desc = "Opens the today daily note", noremap = true, silent = true })

vim.keymap.set("n", "<leader>oc", function ()
	vim.cmd("ObsidianTOC")
end, { desc = "Opens the table of content in a picker list", noremap = true, silent = true })

vim.keymap.set("n", "<leader>oo", function ()
	vim.cmd("ObsidianQuickSwitch")
end, { desc = "switch to a note chosen in telescope", noremap = true, silent = true })

vim.keymap.set("n", "<leader>os", function ()
	vim.cmd("ObsidianSearch")
end, { desc = "grep search in telescope", noremap = true, silent = true })
