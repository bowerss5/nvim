vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

-- Save and quit
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", opts)

-- Neotree
vim.keymap.set("n", "<C-t>", "<cmd> Neotree toggle <CR>", opts)

-- Center on scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Center on find
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Creating splits
vim.keymap.set("n", '<leader>"', "<C-w>v", opts)
vim.keymap.set("n", "<leader>%", "<C-w>s", opts)
-- Navigate splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)

vim.keymap.set("n", "<leader>tt", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 5)
end)

-- Indent mode fix
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer
