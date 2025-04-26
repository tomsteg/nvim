local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap('', '<', '[', opts)
keymap('', '>', ']', opts)

-- split window
keymap('n', 'sv', ':vsplit<Return><C-w>w', opts)
keymap('n', 'sh', ':split<Return><C-w>w', opts)

-- better window navigation
keymap('n', '<Space>', '<C-w>w', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
keymap("n", "<C-w>+", ":vertical resize +5<CR>", opts)
keymap("n", "<C-w>-", ":vertical resize -5<CR>", opts)

-- buffers
keymap('n', '<Leader>bn', ':bn<CR>', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- toggle highlightsearch
keymap('n', '<Leader>h', ':set hls!<cr>', opts)

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

