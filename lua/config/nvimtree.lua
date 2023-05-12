local function on_attach(bufnr)
	local api = require('nvim-tree.api')

	local function opts(desc)
		return {desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
	end

	vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
	vim.keymap.set('n', 'q', api.tree.close, opts('Close'))

end

local api = require("nvim-tree.api")
local Event = api.events.Event

api.events.subscribe(Event.TreeOpen, function()
	-- TODO Dynamically get background highlight from color scheme
	vim.api.nvim_set_hl(0, "NvimTreeNormal", {bg = "#282a36"})
end)

require('nvim-tree').setup{
	renderer = {
		icons = {
			glyphs = {
				git = {
					unstaged = "",
					staged = "",
					unmerged = "",
					renamed = "",
					untracked = "",
					deleted = "",
					ignored = "",
				},
			}
		},
	},
	on_attach = on_attach
}
