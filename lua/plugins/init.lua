return {
	-- Git related plugins
	{
		'tpope/vim-fugitive',
		keys = {
			{ "<leader>gs", vim.cmd.Git, desc = "Git" },
		}
	},
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
	{
		"OlegGulevskyy/better-ts-errors.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		config = {
			keymaps = {
				toggle = '<leader>dd', -- default '<leader>dd'
				go_to_definition = '<leader>dx' -- default '<leader>dx'
			}
		}
	},

	{
		'ThePrimeagen/vim-apm',
		config = function()
			local apm = require("vim-apm")

			apm:setup({})
			vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
		end
	},
}
