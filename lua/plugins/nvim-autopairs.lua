-----------------------------------------------------------
-- Autopairs configuration file
----------------------------------------------------------

-- Plugin: nvim-autopairs
-- url: https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  opts = {
  },
  config = function(_, opts)
    require("nvim-autopairs").setup(opts)
  end,
}
