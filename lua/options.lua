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

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<F5>", ":silent !compile %<CR>", opts)
