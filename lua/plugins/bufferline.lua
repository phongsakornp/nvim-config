-----------------------------------------------------------
-- Buffer line configuration file
----------------------------------------------------------

-- Plugin: bufferline
-- url: https://github.com/akinsho/bufferline.nvim

return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slope",
    },
  },
}
