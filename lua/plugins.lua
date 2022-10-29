vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
	use {
		'Mofiqul/dracula.nvim',
		-- TODO: Automatically set colorscheme on load
		config = require('config.dracula')
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = require('config.lualine')
	}

end)
