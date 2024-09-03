-----------------------------------------------------------
-- Indent configuration file
----------------------------------------------------------

-- Plugin: indent-blankline
-- url: https://github.com/lukas-reineke/indent-blankline.nvim

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  config = function(_, opts)
    local ibl = require("ibl")
    ibl.setup(opts)
  end,
}
