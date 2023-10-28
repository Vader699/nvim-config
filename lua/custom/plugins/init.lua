vim.opt.fileformats = "unix,dos"

vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.opt.scrolloff = 8

vim.keymap.set("", "<C-d>", "<C-d>zz")
vim.keymap.set("", "<C-u>", "<C-u>zz")
vim.keymap.set("", "n", "nzzzv")
vim.keymap.set("", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", ":Q", ":q")
vim.keymap.set("n", ":Q!", ":q!")
vim.keymap.set("n", ":WQ", ":wq")
vim.keymap.set("n", ":W", ":w")
vim.keymap.set("n", ":W!", ":w!")

return {
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
  { 'ThePrimeagen/vim-be-good' }
}
