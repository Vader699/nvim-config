vim.opt.fileformats = "unix,dos"

vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.opt.scrolloff = 8

return {
  {
    'folke/trouble.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },
  { 'nvim-treesitter/nvim-treesitter-context' },
  { 'HiPhish/rainbow-delimiters.nvim' },
  { 'github/copilot.vim' },
}
