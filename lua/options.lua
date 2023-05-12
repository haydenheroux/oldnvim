-- line numbering
vim.o.number = true
vim.o.relativenumber = true

-- search
vim.o.ignorecase = true -- Do not require exact cases to match exactly
vim.o.smartcase = true
vim.o.hlsearch = false -- Disable highlighting past searches

-- wrap lines
vim.o.wrap = true
vim.o.breakindent = true

-- tabs vs. spaces
local tabstop = 4 -- Tabs take up to four spaces
vim.o.tabstop = tabstop
vim.o.shiftwidth = tabstop
vim.o.softtabstop = tabstop
vim.o.expandtab = false -- Do not replace tabs with spaces
vim.o.list = true -- Show tabs, trailing spaces, etc.
vim.o.listchars = "tab:>-,trail:-,nbsp:+"

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.termguicolors = true

-- ns = noremap, silent
local ns = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap
keymap("n", "<F5>", ":silent !compile %<CR>", ns)

keymap("n", "<C-h>", [[<C-w>h]], ns)
keymap("n", "<C-j>", [[<C-w>j]], ns)
keymap("n", "<C-k>", [[<C-w>k]], ns)
keymap("n", "<C-l>", [[<C-w>l]], ns)

vim.g.mapleader = " "
keymap("n", "<leader>g", [[:lua require'telescope.builtin'.find_files{}<CR>]], ns)
keymap("n", "<leader>f", [[:lua require'telescope.builtin'.live_grep{}<CR>]], ns)
keymap("n", "<leader>d", [[:lua require'telescope.builtin'.lsp_definitions{}<CR>]], ns)
keymap("n", "<leader>i", [[:lua require'telescope.builtin'.lsp_implementations{}<CR>]], ns)
keymap("n", "<leader>r", [[:lua require'telescope.builtin'.lsp_references{}<CR>]], ns)
keymap("n", "<leader>.", [[:lua vim.lsp.buf.code_action()<CR>]], ns)
keymap("n", "<leader>rr", [[:lua vim.lsp.buf.rename()<CR>]], ns)
keymap("n", "<leader> ", [[:Telescope<CR>]], ns)
keymap("n", "<leader>t", [[:NvimTreeFocus<CR>]], ns)
keymap("n", "<leader>j", [[:bnext<CR>]], ns)
keymap("n", "<leader>k", [[:bprev<CR>]], ns)

-- TODO Jank
require('telescope').load_extension("ui-select")
