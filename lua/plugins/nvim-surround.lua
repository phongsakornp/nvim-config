-----------------------------------------------------------
-- Surround configuration file
----------------------------------------------------------

-- Plugin: nvim-surround
-- url: https://github.com/kylechui/nvim-surround

return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function(_, opts)
    require("nvim-surround").setup(opts)
  end,
}
