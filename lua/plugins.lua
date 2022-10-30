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

	use {
		'lewis6991/gitsigns.nvim',
		config = require('config.gitsigns')
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
		config = require('config.treesitter')
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = require('config.nvimtree')
	}

	use {
		'ms-jpq/coq_nvim',
		branch = 'coq'
	}

	use {
		'ms-jpq/coq.artifacts',
		branch = 'artifacts'
	}

	use {
		'ms-jpq/coq.thirdparty',
		branch = '3p'
	}
end)
