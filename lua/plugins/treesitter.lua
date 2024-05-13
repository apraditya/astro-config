-- Customize Treesitter

---@type LazySpec
return {
  {
    "andymass/vim-matchup",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua",
        "vim",
        -- add more arguments for adding more treesitter parsers
      })

      opts.matchup = {
        enable = true,
      }
    end,
  },
}
