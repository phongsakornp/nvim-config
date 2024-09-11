-----------------------------------------------------------
-- Auto changes appearance based on system settings
----------------------------------------------------------

-- Plugin: auto-dark-mode
-- url: https://github.com/f-person/auto-dark-mode.nvim

return {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  opts = {
    update_interval = 3000,
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {})
      -- Have to call command `colorscheme` twice to make it fully work
      vim.cmd "colorscheme github_dark"
      -- os.execute "sleep 1"
      vim.cmd "colorscheme github_dark"
      require("lualine").setup { options = { theme = "github_dark" } }
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {})
      vim.cmd "colorscheme github_light"
      -- os.execute "sleep 1"
      vim.cmd "colorscheme github_light"
      require("lualine").setup { options = { theme = "github_light" } }
    end,
  },
}
