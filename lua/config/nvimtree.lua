local function on_attach(bufnr)
	local api = require('nvim-tree.api')

	local function opts(desc)
		return {desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
	end

	vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
	vim.keymap.set('n', 'q', api.tree.close, opts('Close'))

end

require('nvim-tree').setup({
	on_attach = on_attach
})
