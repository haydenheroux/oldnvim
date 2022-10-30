vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)

	use {
		'wbthomason/packer.nvim'
	}

	use {
		'Mofiqul/dracula.nvim',
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
		'ms-jpq/chadtree',
		branch = 'chad',
		run = 'python3 -m chadtree deps'
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

	use {
		'neovim/nvim-lspconfig',
		config = require('config.lspconfig')
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = require('config.telescope')
	}
end)
