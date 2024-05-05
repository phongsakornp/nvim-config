-----------------------------------------------------------
-- Telescope configuration file
----------------------------------------------------------

-- Plugin: nvim-telescope
-- url: https://github.com/nvim-telescope/telescope.nvim

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  opts = {
  },
  config = function(_, opts)
    require("telescope").setup(opts)
  end,
}
