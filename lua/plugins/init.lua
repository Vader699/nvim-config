return {
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',

	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim', opts = {} },

	-- Useful plugin to show you pending keybinds.
	{ 'folke/which-key.nvim',  opts = {} },

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim', opts = {} },


	{
		'folke/trouble.nvim',
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	},

	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require 'colorizer'.setup()
		end
	},

	{ 'nvim-treesitter/nvim-treesitter-context' },
	{ 'HiPhish/rainbow-delimiters.nvim' },
	{ 'github/copilot.vim' },
	{ 'ThePrimeagen/vim-be-good' },
	{
		'f-person/git-blame.nvim',
		opts = {}
	},
}

