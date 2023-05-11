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
keymap("n", "<C-t>", ":NvimTreeFocus<CR>", opts)

keymap("n", "<F5>", ":silent !compile %<CR>", opts)

vim.g.mapleader = " "
-- VSCode compatibility shortcuts
keymap("n", "<leader>f", [[:lua require'telescope.builtin'.live_grep{}<CR>]], opts)
keymap("n", "<leader>d", [[:lua require'telescope.builtin'.lsp_definitions{}<CR>]], opts)
keymap("n", "<leader>i", [[:lua require'telescope.builtin'.lsp_implementations{}<CR>]], opts)
keymap("n", "<leader>r", [[:lua require'telescope.builtin'.lsp_references{}<CR>]], opts)
keymap("n", "<leader>.", [[:lua vim.lsp.buf.code_action()<CR>]], opts)

-- TODO Jank
require('telescope').load_extension("ui-select")
