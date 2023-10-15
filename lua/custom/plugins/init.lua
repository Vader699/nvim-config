vim.opt.fileformats = "unix,dos"

vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

return {
  {
    'folke/trouble.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },
  { 'HiPhish/rainbow-delimiters.nvim' },
  { 'github/copilot.vim' },
}
