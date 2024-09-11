-----------------------------------------------------------
-- Indent configuration file
----------------------------------------------------------

-- https://www.reddit.com/r/neovim/comments/16u5abl/indent_blankline_v3_is_released/

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = { char = "│" },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
    },
  },
  config = function(_, opts)
    local ibl = require "ibl"
    ibl.setup(opts)
  end,
}
