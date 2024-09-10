-----------------------------------------------------------
-- Auto changes the appearance on system settings configuration file
----------------------------------------------------------

-- Plugin: auto-dark-mode
-- url: https://github.com/f-person/auto-dark-mode.nvim

return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      require("onedark").setup {
        style = "dark",
      }
      vim.api.nvim_set_option_value("background", "dark", {})
      vim.cmd "colorscheme onedark"
    end,
    set_light_mode = function()
      require("onedark").setup {
        style = "light",
      }
      vim.api.nvim_set_option_value("background", "light", {})
      vim.cmd "colorscheme onedark"
    end,
  },
}
