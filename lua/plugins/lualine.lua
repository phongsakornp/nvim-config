-----------------------------------------------------------
-- Status line configuration file
----------------------------------------------------------

-- Plugin: lualine
-- url: https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function(_, opts)
    local lualine = require("lualine")
    lualine.setup(opts)
  end,
}
