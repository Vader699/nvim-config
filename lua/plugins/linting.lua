return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      markdown = { "markdownlint" },
      graphql = { "eslint_d" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("Lint", { clear = true })

    vim.api.nvim_create_autocmd(
      {
        "BufEnter", "BufWritePost", "InsertLeave", "TextChanged"
      },
      {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end
      }
    )

    vim.keymap.set("n", "<leader>l", function()
        lint.try_lint()
      end,
      { desc = "Trigger linting for current buffer" }
    )
  end
}
