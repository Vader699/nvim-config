return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    local mason_tool_installer = require("mason-tool-installer")

    mason_tool_installer.setup({
      ensure_installed = {
        "eslint",
        "eslint_d",
        "markdownlint",
        "prettier",
        "stylelint",
      },
      auto_update = true
    })
  end,
}
