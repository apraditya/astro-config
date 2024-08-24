-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a code actions
      -- Set a formatter
      null_ls.builtins.formatting.markdownlint,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.rubocop,
      null_ls.builtins.formatting.stylelint,
      -- null_ls.builtins.formatting.stylua,
    })
  end,
}
