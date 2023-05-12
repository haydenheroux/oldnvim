require("bufferline").setup{
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = function()
					return vim.fn.getcwd()
				end,
				highlight = "Directory",
				text_align = "left",
				separator = true,
			}
		},
		sort_by = function(a, b)
			return a.name < b.name
		end
	}
}
