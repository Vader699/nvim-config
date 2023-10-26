-- -- Unless you are still migrating, remove the deprecated commands from v1.x
-- vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
--
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
--
-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   version = "*",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--     "MunifTanjim/nui.nvim",
--   },
--   config = function()
--     require('neo-tree').setup {}
--
--     vim.keymap.set("n", "<leader>t", '<Cmd>Neotree toggle<CR>')
--   end,
-- }

return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require('telescope').setup {
      extensions = {
        file_browser = {
          hijack_netrw = true,
        }
      }
    }

    require('telescope').load_extension('file_browser')

    vim.keymap.set("n", "<leader>t", '<Cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>')
  end,
}
