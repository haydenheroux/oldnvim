vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)

	use {
		'wbthomason/packer.nvim'
	}

	use { 'Mofiqul/dracula.nvim', config = [[require('config.dracula')]] }

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = [[require('config.lualine')]]
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = [[require('config.gitsigns')]]
	}

	use {
		'nvim-tree/nvim-tree.lua',
		config = [[require('config.nvimtree')]]
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
		config = [[require('config.treesitter')]]
	}

	use { "onsails/lspkind-nvim", event = "VimEnter" }
	use { "hrsh7th/nvim-cmp", after = "lspkind-nvim", config = [[require('config.nvimcmp')]] }

	-- TODO Run `python3 -m pip install neovim`
	use { "SirVer/ultisnips", event = "InsertEnter" }
	use { "honza/vim-snippets", after = "ultisnips" }

	-- nvim-cmp completion sources
	use { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" }
	use { "hrsh7th/cmp-path", after = "nvim-cmp" }
	use { "hrsh7th/cmp-buffer", after = "nvim-cmp" }
	use { "hrsh7th/cmp-omni", after = "nvim-cmp" }
	use { "quangnguyen30192/cmp-nvim-ultisnips", after = { "nvim-cmp", "ultisnips" } }

	use {
		'neovim/nvim-lspconfig',
		config = [[require('config.lspconfig')]]
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = [[require('config.telescope')]]
	}

	use 'mfussenegger/nvim-jdtls'

	use {'nvim-telescope/telescope-ui-select.nvim' }

	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons', config = [[require('config.bufferline')]]}
end)
